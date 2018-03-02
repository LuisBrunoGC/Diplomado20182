//: Algoritmos de clase

import UIKit

//: Numero Primo

func isPrime(n: Int) -> Bool{
    for i in 2..<n{
        if n % i == 0{
            return false
        }
    }
    return true
}

isPrime(n: 91)

//: Serie de Fibonacci

func fibo(n: Int){
    var a = 0, b = 1
    while b < n{
        print(b)
        (a, b) = (b, a + b)
    }
}
fibo(n: 101)

//: Palindromo

func palindromo(str: String) -> Bool{
    return str == String(str.reversed())
}
palindromo(str: "anitalavalatina")
palindromo(str: "anita lava la tina")

//: Funcion que compare dos cadenas y verifique que contenga los mismos caracteres en el mismo o diferente orden

func comparaCadenas(str:String, str2:String) -> Bool{
    return str.count == str2.count && str.sorted() == str2.sorted()
}
comparaCadenas(str: "hola", str2: "aloh")
print(comparaCadenas(str: "hola", str2: "aloh"))
