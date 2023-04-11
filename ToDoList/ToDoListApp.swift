//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Samantha Stewart on 2023-04-03.
//

import SwiftUI

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ListView()
                .environment(\.blackbirdDatabase, AppDatabase.instance)
            
        }
    }
}
