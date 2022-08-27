//
//  Person.swift
//  ContactList
//
//  Created by Dmitriy Ryndya on 23.08.2022.
//

import SwiftUI

struct Person: Identifiable {
    var id: Int
    var firtsName: String
    var secontName: String
    var phoneNumber: String
    var email: String
    
    
   static func createPerson() -> [Person] {
    var persons: [Person] = []
    let firtsNames = DataManager.shared.firstNames.shuffled()
    let secontNames = DataManager.shared.secondNames.shuffled()
    let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
    let emails = DataManager.shared.emails.shuffled()
        
        for index in 0..<firtsNames.count {
            let person = Person(id: index + 1, firtsName: firtsNames[index], secontName: secontNames[index], phoneNumber: phoneNumbers[index], email: emails[index])
            persons.append(person)
        }
    
        return persons
    }
    
}
