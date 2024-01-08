//
//  EtropusListView.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI
import CoreData

struct EtropusListView: View {
    @ObservedObject var etropusData: EtropusData
    @State private var shouldPopToRootView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(etropusData.etropus, id: \.id) { etropusEntity in
                    NavigationLink(destination: EtropusDetailView(etropusEntity: etropusEntity, etropusData: etropusData)) {
                        VStack(alignment: .leading, spacing: 7) {
                            Text(etropusEntity.name ?? "")
                                .font(.headline)
                            Text(etropusEntity.phone ?? "")
                                .font(.headline)
                        }
                    }
                }
                .onDelete { indexes in
                    deleteEtropus(at: indexes)
                }
            }
            .navigationBarTitle("Contact Blockchain")
            .navigationBarItems(trailing: NavigationLink(destination: AddEtropusView(etropusData: etropusData)) {
                Image(systemName: "plus")
                Text("Add")
            })
        }
        .onAppear {
            etropusData.fetchEtropus()
        }
    }
    
    func deleteEtropus(at offsets: IndexSet) {
        let etropusToDelete = offsets.map { etropusData.etropus[$0] }
        etropusToDelete.forEach { etropusEntity in
            etropusData.deleteEtropus(with: etropusEntity)
        }
    }
}
