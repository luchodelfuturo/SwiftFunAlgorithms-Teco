//: [Previous](@previous)

import Foundation

func encontrarElementoMasFrecuente(in array: [String]) -> String? {
    var frecuencias = [String: Int]() // Crear un diccionario para contar la frecuencia de cada elemento
    var elementoMasFrecuente: String?
    var frecuenciaMasAlta = 0
    
    // Iterar sobre el array y actualizar las frecuencias
    for elemento in array {
        if let frecuencia = frecuencias[elemento] {
            frecuencias[elemento] = frecuencia + 1
        } else {
            frecuencias[elemento] = 1
        }
        
        // Actualizar el elemento más frecuente si es necesario
        if let frecuencia = frecuencias[elemento], frecuencia > frecuenciaMasAlta {
            frecuenciaMasAlta = frecuencia
            elementoMasFrecuente = elemento
        }
    }
    
    return elementoMasFrecuente
}
let nombres = ["Ana", "Juan", "María", "Pedro", "Luisa", "Juan", "María", "Luisa", "Juan"]
if let elementoMasFrecuente = encontrarElementoMasFrecuente(in: nombres) {
    print("El elemento más frecuente es \(elementoMasFrecuente)")
} else {
    print("El array está vacío")
}
