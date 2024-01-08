//
//  EtropusDetailView.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI

struct EtropusDetailView: View {
    var etropusEntity: EtropusEntity
    @ObservedObject var etropusData: EtropusData
    
    var body: some View {
        Form {
            Section {
                Text(etropusEntity.name ?? "")
                    .font(.system(size: 40))
                Text(etropusEntity.phone ?? "")
                    .font(.headline)
                Text(etropusEntity.symbol ?? "")
                    .font(.system(size: 20))
                Text(etropusEntity.token ?? "")
                    .font(.headline)
                Text(etropusEntity.investment ?? "")
                    .font(.headline)
            }
            Section {
                NavigationLink(destination: EditEtropusView(etropusEntity: etropusEntity, etropusData: etropusData)) {
                    Text("Edit Register")
                }
                Button("Delete Register") {
                    deleteEtropus()
                }
                .foregroundColor(.red)
            }
        }
        .navigationBarTitle("Details Contact")
    }
    
    func deleteEtropus() {
        etropusData.deleteEtropus(with: etropusEntity)
    }
}
