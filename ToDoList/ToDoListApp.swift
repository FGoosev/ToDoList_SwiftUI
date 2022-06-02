//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Александр Гусев on 20.04.2022.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
