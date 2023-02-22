//: [Previous](@previous)

import Foundation

// Definimos un arreglo de números ordenados de forma ascendente.
let numbers = [1,2,3,4,5,6,7,8,20]

// Definimos una función de búsqueda binaria que recibe un arreglo de enteros y un valor entero a buscar. Retorna un valor booleano.
func binarySearch( array: [Int], value: Int) -> Bool {
    // Definimos dos variables enteras para indicar el índice de la posición izquierda y derecha en el arreglo.
    var left = 0
    var right = array.count - 1

    // Ejecutamos un bucle while mientras el índice izquierdo sea menor o igual que el derecho.
    while left <= right {
        // Calculamos el índice del medio del arreglo.
        let middle = (left + right) / 2

        // Si el número en la posición del medio es igual al valor que buscamos, retornamos verdadero.
        if array[middle] == value {
            return true
        }
        // Si el número en la posición del medio es menor que el valor que buscamos, descartamos la mitad izquierda del arreglo.
        else if array[middle] < value {
            left = middle + 1
        }
        // Si el número en la posición del medio es mayor que el valor que buscamos, descartamos la mitad derecha del arreglo.
        else {
            right = middle - 1
        }
    }

    // Si el valor no se encuentra en el arreglo, retornamos falso.
    return false
}

// Llamamos a la función de búsqueda binaria y le pasamos el arreglo y el valor a buscar. En este caso, buscamos el valor 4 en el arreglo.
binarySearch(array: numbers, value: 4)
