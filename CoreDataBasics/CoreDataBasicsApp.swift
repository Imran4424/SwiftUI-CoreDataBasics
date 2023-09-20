//
//  CoreDataBasicsApp.swift
//  CoreDataBasics
//
//  Created by Shah Md Imran Hossain on 20/9/23.
//

import SwiftUI

@main
struct CoreDataBasicsApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
            // managedObjectContext - live version of data
        }
    }
}
