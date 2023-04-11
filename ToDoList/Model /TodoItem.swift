//
//  File.swift
//  ToDoList
//
//  Created by Samantha Stewart on 2023-04-05.
//

import Foundation

struct TodoItem: Identifiable {
    
    var id: Int
    var description: String
    var completed: Bool
}
var existingTodoItems = [
    TodoItem(id: 1, description: "complete homework", completed: false)
    ,
    TodoItem(id: 2, description: "hangout with sebby", completed: false)
    ,
    TodoItem(id: 3, description: "yoooo now way fham ", completed: true)
    ,
    

]
