//
//  EtropusData.swift
//  Etropus
//
//  Created by David Oliveira on 07/01/24.
//

import SwiftUI
import CoreData

class EtropusData: ObservableObject {
    @Published var etropus: [EtropusEntity] = []
    var context = PersistenceController.shared.container.viewContext
    
    func fetchEtropus() {
        do {
            let request: NSFetchRequest<EtropusEntity> = EtropusEntity.fetchRequest()
            etropus = try context.fetch(request)
        } catch {
            print("Error fetching etropus \(error)")
        }
    }
    
    func saveEtropus() {
        do {
            try context.save()
            fetchEtropus()
        } catch {
            print("Error saving etropus \(error)")
        }
    }
    
    func deleteEtropus(with etropusEntity: EtropusEntity) {
        context.delete(etropusEntity)
        saveEtropus()
    }
}
