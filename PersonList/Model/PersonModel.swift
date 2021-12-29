//
//  PersonModel.swift
//  PersonList
//
//  Created by Васильева Ольга on 29.12.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getPersonList() -> [Person] {
        
        var result: [Person] = []
        
        var names = DataManager.shared.names
        var surnames = DataManager.shared.surnames
        var emails = DataManager.shared.emails
        var phones = DataManager.shared.phones
        
        for _ in (1...names.count) {
            
            let name = names.randomElement() ?? ""
            let surname = surnames.randomElement() ?? ""
            let email = emails.randomElement() ?? ""
            let phone = phones.randomElement() ?? ""
            
            
            result.append(Person(name: name,
                                 surname: surname,
                                 email: email,
                                 phone: phone))
            
            if let i = names.firstIndex(of: name) {
                names.remove(at: i)
            }
            if let i = surnames.firstIndex(of: surname) {
                surnames.remove(at: i)
            }
            if let i = emails.firstIndex(of: email) {
                emails.remove(at: i)
            }
            if let i = phones.firstIndex(of: phone) {
                phones.remove(at: i)
            }
            
        }
        
        return result
    }
}
