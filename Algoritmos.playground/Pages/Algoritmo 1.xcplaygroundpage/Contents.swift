
import UIKit

let numbers = [1,2,3,4,5,6,7,8,9,15]

// Fizz BUzz , Fizz when X % 3 == 0 and Buzz when X % 5 == 0 , if X % 3 && X % 5 == 0 return FizzBuzz


numbers.forEach { number in
    
    let fizz = number % 3 == 0
    let buzz = number % 5 == 0
    let fizzbuzz = fizz && buzz
    
    switch (fizz,buzz){
    case (true,false):
        print(number," fizz")
    case (false,true):
        print(number," buzz")
    case (true,true):
        print(number," fizzbuzz")
    default:
        print(number)
    }
    
}

