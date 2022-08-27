//
//  ContentView.swift
//  ContactList
//
//  Created by Dmitriy Ryndya on 21.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactListVIew(persons: Person.createPerson())
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            NumbersListView(persons: Person.createPerson())
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
