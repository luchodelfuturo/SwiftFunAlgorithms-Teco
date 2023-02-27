//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class HTMLElement {
    let name: String
    let text: String
    
    lazy var asHTML: () -> String = {
        return "<\(self.name)>\(self.text)</\(self.name)>"
    }
    
    init (name: String, text: String ){
        self.name= name
        self.text = text
    }
    
    deinit {
        print("HTMLElement \(name) is being deallocated")
    }
    
    
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text:"Some sample paragrpah body text")

paragraph?.asHTML()

paragraph = nil

// Have a Closure referencycle, with asHTML have a conection with that closure, and clousure same.
// for get a solution we can aply [weak self] in closure, so we can use correctly...


//lazy var asHTML: () -> String = {
//    [weak self] in
//    return "<\(self.name)>\(self.text)</\(self.name)>"
//}
