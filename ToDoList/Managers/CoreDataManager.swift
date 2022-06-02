//
//  CoreDataManager.swift
//  ToDoList
//
//  Created by Александр Гусев on 20.04.2022.
//

import Foundation
import CoreData

class CoreDataManager{
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init(){
        persistentContainer = NSPersistentContainer(name: "SimpleToDoModel")
        persistentContainer.loadPersistentStores{description, error in
            if let error = error{
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    }
}
