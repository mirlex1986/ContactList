//
//  Model.swift
//  ContactList
//
//  Created by Алексей on 16.02.2021.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}


class DataManager {
    var names = ["Alex", "Roman", "Ivan", "Sergey", "Petr"]
    var surnames = ["Firsov", "Mironov", "Ivanov", "Petrov", "Sidorov"]
    var emails = ["mail.ru","gmail.com", "ya.ru", "bk.ru", "corp.com"]
    var phones = ["111111", "222222", "333333", "444444", "555555"]
    
    func makeContacts() -> [Person] {
        var contacts: [Person] = []
        for _ in names {
            let randomName = Int.random(in: 0..<names.count)
            let name = names.remove(at: randomName)
            
            let randomSurname = Int.random(in: 0..<surnames.count)
            let surname = surnames.remove(at: randomSurname)
            
            let randomEmail = Int.random(in: 0..<emails.count)
            let email = emails.remove(at: randomEmail)
            
            let randomPhone = Int.random(in: 0..<phones.count)
            let phone = phones.remove(at: randomPhone)
            
            let contact = Person(
                name: name,
                surname: surname,
                phone: phone,
                email: name.lowercased() + surname.lowercased() + "@" + email
            )
            
            contacts.append(contact)
        }
        return contacts
    }
}


