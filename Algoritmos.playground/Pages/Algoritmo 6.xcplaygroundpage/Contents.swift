//: [Previous](@previous)

import Foundation

// Función que devuelve la secuencia de Fibonacci completa hasta el n-ésimo término utilizando recursión
func fibonacciRecursivo(n: Int) -> [Int] {
    // Caso base: si n es 0 o 1, devolver una matriz con un solo elemento igual a n
    if n <= 1 {
        return [n]
    }
    // Caso recursivo: calcular la secuencia de Fibonacci para los dos números anteriores y agregarlos a la matriz
    var resultado = fibonacciRecursivo(n: n-1)
    resultado.append(resultado.last! + (resultado.count > 1 ? resultado[resultado.count-2] : 0))
    return resultado
}
let n = 10
let resultado = fibonacciRecursivo(n: n)
print("La secuencia de Fibonacci es \(resultado) para n: \(n)")
