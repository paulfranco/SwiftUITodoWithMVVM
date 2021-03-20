//
//  ListTestProjectApp.swift
//  ListTestProject
//
//  Created by Paul Franco on 3/20/21.
//

import SwiftUI

@main
struct ListTestProjectApp: App {
    
    @StateObject var todoManager = ToDoListManager()
    
    var body: some Scene {
        WindowGroup {
            TodoListView(todoManager: todoManager)
        }
    }
}
