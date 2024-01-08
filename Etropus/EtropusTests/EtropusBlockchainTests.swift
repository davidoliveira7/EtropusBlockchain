//
//  EtropusBlockchainTests.swift
//  EtropusBlockchainTests
//
//  Created by David Oliveira on 07/01/24.
//

import XCTest
import CoreData

@testable import EtropusBlockchain

class EtropusBlockchainTests: XCTestCase {
    
    // Mock class for testing CoreData stack
    class MockPersistenceController: PersistenceController {
        override init() {
            super.init()
            let description = NSPersistentStoreDescription()
            description.type = NSInMemoryStoreType
            container.persistentStoreDescriptions = [description]
        }
    }
    
    // Mock class for testing EtropusData
    class MockEtropuskData: EtropusData {
        override init() {
            super.init()
            self.context = MockPersistenceController.shared.container.viewContext
        }
        // Override the context property to make it a variable
        override var context: NSManagedObjectContext {
            didSet {
            }
        }
        
        func updateEtropus(entity: EtropusEntity, name: String, phone: String, symbol: String, token: String, investment: String) {
            // Your implementation for updating the phone book entity
            entity.name = name
            entity.phone = phone
            entity.symbol = symbol
            entity.token = token
            entity.investment = investment
        }
        
        func addEtropus(name: String, phone: String, symbol: String, token: String, investment: String) {
            // Your implementation for adding a new phone book entity
            let newEntity = EtropusEntity(context: context)
            newEntity.name = name
            newEntity.phone = phone
            newEntity.symbol = symbol
            newEntity.token = token
            newEntity.investment = investment
            etropus.append(newEntity)
        }
        
        override func deleteEtropus(with entity: EtropusEntity) {
            // Your implementation for deleting the Etropus entity
            if let index = etropus.firstIndex(of: entity) {
                etropus.remove(at: index)
            }
        }
    }
}
