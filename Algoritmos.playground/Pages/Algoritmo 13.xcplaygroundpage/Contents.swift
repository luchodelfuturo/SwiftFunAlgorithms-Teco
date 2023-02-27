//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// Codigo actualizado
// Ahora este codigo si tiene un retain cycle, una referencia de ambas clases cada uno, se soluciona agregandole weak a var tenant en Apartment2
class Person2 {
    let name: String
    let apart: Apartment2
    init(name: String){
        self.name = name
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment2 {
    let number: Int
     var tenant: Person2? // Usando "weak" para evitar Retain Cycle
    
    init(number: Int){
        self.number = number
    }
}

var bob2: Person2? = Person2(name: "Bob")

let apt2 = Apartment2(number: 123)
apt.tenant = bob

bob = nil // Al establecer bob como nil, el objeto de la clase Person se eliminará correctamente de la memoria
