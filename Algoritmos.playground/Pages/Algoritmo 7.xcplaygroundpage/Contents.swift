//: [Previous](@previous)

import Foundation

func rotateArray(_ array: [String], by element: String) -> [String]? {
    // Verificar si el elemento está en la matriz
    guard let index = array.firstIndex(of: element) else {
        return nil
    }
    
    // Crear una nueva matriz con el elemento seleccionado y los elementos restantes en orden original
    var rotatedArray = [element]
    rotatedArray.append(contentsOf: array[index+1..<array.count])
    rotatedArray.append(contentsOf: array[0..<index])
    
    return rotatedArray
}
let tracks = ["a", "b", "c", "d", "e"]
if let rotatedTracks = rotateArray(tracks, by: "d") {
    print(rotatedTracks) // ["d", "e", "a", "b", "c"]
} else {
    print("El elemento no se encontró en la lista.")
}
