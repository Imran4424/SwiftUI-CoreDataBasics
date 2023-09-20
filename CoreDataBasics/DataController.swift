//
//  DataController.swift
//  CoreDataBasics
//
//  Created by Shah Md Imran Hossain on 20/9/23.
//

import CoreData
import Foundation
 
class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "StudentData")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
