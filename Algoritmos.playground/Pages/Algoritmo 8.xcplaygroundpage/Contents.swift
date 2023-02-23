//: [Previous](@previous)

import Foundation


// Creamos un array con los elementos originales
let array = [3,2,3,4,3]

// Usamos el método filter para filtrar el array y obtener un nuevo array con solo los elementos que cumplan la condición especificada.
// En este caso, la condición es que el elemento sea igual a 3.
let filteredArray = array.filter { $0 == 3 }

// Imprimimos el array filtrado en la consola
print(filteredArray) // [3, 3, 3]

// Utilizamos el método map para transformar cada elemento del array sumándole 10.
let newArray = array.map { $0 + 10 }

// Imprimimos el nuevo array en la consola
print(newArray) // [13, 12, 13, 14, 13]

// Utilizamos el método reduce para sumar todos los elementos del array
let sum = array.reduce(0, { $0 + $1 })

// Imprimimos la suma en la consola
print(sum) // 15
