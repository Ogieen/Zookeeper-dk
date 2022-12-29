//
//  ContentView.swift
//  Zookeeper dk
//
//  Created by Damian Kasperowicz on 29/12/2022.
//

import SwiftUI

struct ContentView: View {
   
    
@State var animals = [
    Animal(name: "Dog"),
    Animal(name: "Cat"),
    Animal(name: "Parrot")
    ]

    var body: some View {
        VStack {
            List(animals) { animal in
                Text(animal.name)
            }
            Button("Add") {
                animals.append(Animal(name: "New Animal"))
            }
            }
        }
    }
    
    
struct Animal: Identifiable {
    var id = UUID()
    var name: String
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
