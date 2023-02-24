//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
enum ExprValue {
    case number(Int)
    case plus
    case minus
    case times
    case divide
}

class ExprNode {
    var value: ExprValue
    var left: ExprNode?
    var right: ExprNode?
    
    init(_ value: ExprValue) {
        self.value = value
    }
}
//(2 + 3) * (4 - 1):
let root = ExprNode(.times)
root.left = ExprNode(.plus)
root.left?.left = ExprNode(.number(2))
root.left?.right = ExprNode(.number(3))
root.right = ExprNode(.minus)
root.right?.left = ExprNode(.number(4))
root.right?.right = ExprNode(.number(1))

//      *
//     / \
//    +   -
//   / \ / \
//  2  3 4  1
func evaluate(_ node: ExprNode) -> Int {
    switch node.value {
    case .number(let n):
        return n
    case .plus:
        return evaluate(node.left!) + evaluate(node.right!)
    case .minus:
        return evaluate(node.left!) - evaluate(node.right!)
    case .times:
        return evaluate(node.left!) * evaluate(node.right!)
    case .divide:
        return evaluate(node.left!) / evaluate(node.right!)
    }
}

let result = evaluate(root)
print(result) // Esto imprimirá 15, que es el resultado de la expresión (2 + 3) * (4 - 1)
