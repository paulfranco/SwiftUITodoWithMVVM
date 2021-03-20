//
//  ToDoListManager.swift
//  ListTestProject
//
//  Created by Paul Franco on 3/20/21.
//

import Foundation

class ToDoListManager: ObservableObject {
    @Published var items: [Item] = []
    
    init(isForTest: Bool = false) {
        if isForTest {
            // get data and set to my items array
            
        }
        
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset:newOffset)
    }
    
    func addItem() {
        items.append(Item(id: UUID(), name: "newly added"))
    }
    
    func delete(at indexSet: IndexSet) {
        for index in indexSet {
            items.remove(at: index)
        }
    }
    
    static func emptyState() -> ToDoListManager {
        let manager = ToDoListManager(isForTest: true)
        manager.items = []
        return manager
    }
    
    static func fullState() -> ToDoListManager {
        let manager = ToDoListManager(isForTest: false)
        manager.items = [
            Item(id: UUID(), name: "first"),
            Item(id: UUID(), name: "second"),
            Item(id: UUID(), name: "Third")
            ]
        return manager
    }
}
