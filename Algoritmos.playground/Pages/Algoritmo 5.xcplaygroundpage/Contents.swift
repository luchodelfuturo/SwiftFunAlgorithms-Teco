//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func reverseEveryOtherWord(in texto: String) -> String {
    var palabras = texto.components(separatedBy: " ") // Dividir la cadena en palabras
    for (indice, palabra) in palabras.enumerated() {
        if indice % 2 == 1 { // Si el índice de la palabra es impar, invertirla
            palabras[indice] = String(palabra.reversed())
        }
    }
    return palabras.joined(separator: " ") // Unir las palabras invertidas en una cadena
}

let texto = "El perro corre en el parque todos los días"
let resultado = reverseEveryOtherWord(in: texto)
print(resultado) // El orrep corre ne el ekrap todos los síd
