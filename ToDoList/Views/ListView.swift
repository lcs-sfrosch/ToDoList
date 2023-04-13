import SwiftUI
import Blackbird

struct ListView: View {
    @Environment(\.blackbirdDatabase) var db: Blackbird.Database?
    
    @BlackbirdLiveModels({ db in
        try await TodoItem.read(from: db)
    }) var liveTodoItems
    
    @State var todoItems: [TodoItem] = []
    @State var newItemDescription: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button(action: {
                        let lastId = todoItems.last?.id ?? 0
                        let newId = lastId + 1
                        
                        let newTodoItem = TodoItem(id: newId, description: newItemDescription, completed: false)
                        todoItems.append(newTodoItem)
                        newItemDescription = ""
                    }, label: {
                        Text("ADD")
                            .font(.caption)
                    })
                }
                .padding(20)
                
                List(todoItems) { currentItem in
                    Label(title: {
                        Text(currentItem.description)
                    }, icon: {
                        if currentItem.completed {
                            Image(systemName: "checkmark.circle")
                        } else {
                            Image(systemName: "circle")
                        }
                    })
                }
            }
            .navigationTitle("Todo List")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
