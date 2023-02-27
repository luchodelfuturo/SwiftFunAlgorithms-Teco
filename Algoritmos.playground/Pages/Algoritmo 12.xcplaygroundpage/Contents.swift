//: [Previous](@previous)

import Foundation

// Retain Cycle

class Person {
    let name: String
    init(name: String){
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let number: Int
    var tenant: Person?
    
    init(number: Int){
        self.number = number
    }
}

var bob: Person? = Person(name: "Bob")

let apt = Apartment(number: 123)
apt.tenant = bob

bob = nil
//  Acá tenemos un Retain Cycle, para solucionarlo sería mejor usar weak


// Codigo actualizado
class Person2 {
    let name: String
    init(name: String){
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment2 {
    let number: Int
    weak var tenant: Person? // Usando "weak" para evitar Retain Cycle
    
    init(number: Int){
        self.number = number
    }
}

var bob2: Person2? = Person2(name: "Bob")

let apt2 = Apartment2(number: 123)
apt.tenant = bob

bob = nil // Al establecer bob como nil, el objeto de la clase Person se eliminará correctamente de la memoria
