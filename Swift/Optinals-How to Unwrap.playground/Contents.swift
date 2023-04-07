//From youtube tutorial - "Swift Optionals - How to Unwrap (real examples)" by Sean Allan
//Tutorial link : https://youtu.be/L3FuDHIv5Ws?list=PL8seg1JPkqgF5wazzCKSq3EEfqt3t8mvA

import UIKit

struct User {
    let name: String
    let age: Int?
}


let user1 = User(name: "Wimansha", age: nil)
let user2 = User(name: "Kamal", age: 33)
let user3 = User(name: "Piyal", age: 45)

// ==== IF LET ====

func showUserAge(user: User) {
    if let age = user.age {
        print("\(user.name)'s age is \(age).")
    } else {
        print("\(user.name) has not entered an age.")
    }
}

showUserAge(user: user1)
showUserAge(user: user2)

// ==== GUARD LET ====
//Guard let is used for early exit of function

func checkAge(age: Int?) {
    guard let age = age else {
        print("Age is nil")
        return
    }
    if age > 40 {
        print("You are old.")
    } else {
        print("You are young.")
    }
}

checkAge(age: user1.age)
checkAge(age: user2.age)
checkAge(age: user3.age)

// ==== NIL COALESCING
//nil coalescing is great way to provide an easy default value.

let age = user1.age ?? 0
print(age)

struct Person {
    let name: String?
    let age: Int?
}

let person1 = Person(name: nil, age: nil)
let person2 = Person(name: nil, age: 25)
let person3 = Person(name: "John", age: nil)

func showPersonInfo(person: Person){
    let name = person.name ?? "not given"
    let age = person.age ?? 0
    print("This person's name is \(name) & age is \(age).")
}

showPersonInfo(person: person1)
showPersonInfo(person: person2)
showPersonInfo(person: person3)

// === OPTIONAL CHAINING ===

var optionalPerson: Person?
let name = optionalPerson?.name ?? "Name not given" //if optinalPerson is nil it won't check the name if it and directly retirns nil as final output.
print(name)

struct Student {
    let firstName: String
    let lastName: String
    
    func getFullName() -> String {
        return firstName + lastName
    }
}

let student1 = Student(firstName: "John", lastName: "Doe")
let student2 : Student? = nil

let fullname1 = student1.getFullName()
let fullname2 = student2?.getFullName() // without ? mark, it will try to execute getFullName() and will crash the app.








