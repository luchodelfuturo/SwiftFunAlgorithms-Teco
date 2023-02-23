//: [Previous](@previous)

import Foundation

//Recursividad y Factorial

// Esta función calcula el factorial de un número de forma recursiva
func factorialRecursivo(value: Int) -> Int{
    
    // Si el valor proporcionado es 0, el factorial es 1
    if value == 0 {
        return 1
    }
    
    // De lo contrario, se llama a la función de forma recursiva con el valor anterior al proporcionado
    return value * factorialRecursivo(value: value - 1)
}

// Se llama a la función con el valor 3
factorialRecursivo(value: 3)
