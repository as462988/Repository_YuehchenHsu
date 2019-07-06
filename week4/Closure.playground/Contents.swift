//2. Please implement a closure which input type is Int, out put type is Bool. The functionality of this closure is to verify if the input is odd or not, If it’s odd, please return true, otherwise return false.

let odd: (Int) -> Bool  = {(value: Int) -> Bool in return value % 2 == 1}
odd((97))

let oddNumber: (Int) -> Bool = {($0 % 2 == 1)}
oddNumber((11))



//func oddVerify(test: Int, _ function: (Int) ->Bool) -> Bool {
//    return function(test)
//}
//
//oddVerify(test: 97, oddNumber)
