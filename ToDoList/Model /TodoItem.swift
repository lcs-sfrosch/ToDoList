//
//  File.swift
//  ToDoList
//
//  Created by Samantha Stewart on 2023-04-05.
//
import Blackbird
import Foundation

struct TodoItem: BlackbirdModel{
    
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var description: String
    @BlackbirdColumn var completed: Bool
}
