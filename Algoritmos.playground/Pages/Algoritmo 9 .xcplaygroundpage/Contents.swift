//: [Previous](@previous)

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

var root = TreeNode(10)
root.left = TreeNode(5)
root.right = TreeNode(15)
root.left?.left = TreeNode(3)
root.left?.right = TreeNode(7)
root.right?.left = TreeNode(12)
root.right?.right = TreeNode(17)


func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else { return nil }
    
    if root.val == val {
        return root
    } else if root.val > val {
        return searchBST(root.left, val)
    } else {
        return searchBST(root.right, val)
    }
}


let result = searchBST(root, 7)
print(result?.val ?? "Valor no encontrado")
