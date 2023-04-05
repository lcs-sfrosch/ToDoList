//
//  ListView .swift
//  ToDoList
//
//  Created by Samantha Stewart on 2023-04-03.
//

import SwiftUI

struct ListView: View {
    
    @State var todoItems: [TodoItem] = existingTodoItems
    @State var newItemDescription: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter a to-do item", text:
                                Binding.constant (""))
                    Button(action: {
                        let lastId = todoItems.last!.id
                        
                        let newId = lastId + 1
                        
                        let newTodoItem + TodoItem(id: newId,
                                                   description:newItemDescription, completed: false)
                        TodoItem.append(newTodoItem)
                        newItemDescription
                        
                    }, label: {
                        Text ("ADD")
                            .font (.caption)
                    })
                    
                    
                }
                List {
                    
                    
                }
                
            }
        }
        
    }
}
            

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
