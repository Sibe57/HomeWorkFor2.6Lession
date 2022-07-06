//
//  User.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 05.07.2022.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getMockUser() -> User {
        User(userName: "Sibe57", password: "qwerty", person: Person.getMockPerson())
    }
}


struct Person {
    let name: String
    let surname: String
    let photo: String
    let isMale: Bool? //да простят меня любители современной повестки за бинарный пол :)
    let age: Int?
    let mainActivity: String?
    let hobbies: [String]
    let about: String?
    let contacts: [String]?
    
    static func getMockPerson() -> Person {
        Person(name: "Федор",
               surname: "Еронин",
               photo: "myPhoto",
               isMale: true,
               age: 26,
               mainActivity: "iOS development",
               hobbies:
                ["Физика", "Туризм", "Киберспорт", "Легкая атлетика", "Программирование"],
               about:
                "В прошлом инженер геодезист, разбираюсь во многом, но по чуть-чуть 😉",
               contacts:
                ["https://github.com/Sibe57",
                 "https://t.me/sibe57",
                 "https://vk.com/sibe57" ])
    }
}
