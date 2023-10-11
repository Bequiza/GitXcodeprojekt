//
//  ContentView.swift
//  GitXcode
//
//  Created by Rebecca Zadig on 2023-10-11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var newItem: String = ""
       @State private var itemList: [String] = []
    
    var body: some View {
        
        VStack{
            
            Spacer().frame(height: 100)
            
            HStack {
                
                Spacer().frame(width: 50)
                
                TextField("Skriv här", text: $newItem)
                
                Button(action: {
                    itemList.append(newItem)
                    newItem = ""
                }) {
                    Text("Lägg till")
                }
                
                Spacer().frame(width: 50)
                
            }
            
            List(itemList, id: \.self) { item in
                Text(item)
            }
            
            Button(action: {
                itemList.removeAll()
            }) {
                Text("Rensa lista")
            }
            Spacer().frame(height: 70)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
