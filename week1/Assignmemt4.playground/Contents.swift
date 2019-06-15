//Assignment 4: Function in Swift
//1.
func greet(person name: String) -> String{
    return "Hello, \(name)"
}
greet(person: "Celeste")

//2.
func multiply(a:Int, b:Int = 10) -> Void{
 print(a * b)
}
multiply(a: 22)

//3.
//Argument label為參數在Function外部呼叫時使用的名稱;Parameter label為參數在Function內部使用的名稱
//如果兩個都有被定義，在內部只能使用Parameter label
//沒有定義Argument label時，在外部呼叫時就使用Parameter label。

//4.
func birthday() -> String {
    return ""
    //the return type is String
}

func payment() -> Double {
    return 0
    //the return type is Double
}
