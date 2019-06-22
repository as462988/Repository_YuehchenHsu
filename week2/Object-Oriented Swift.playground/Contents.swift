//1.
enum Gerder {
    case male
    case female
    case undefind
}
class Animal {
    var gender: Gerder
    
    init(gender: Gerder) {
        self.gender = gender
    }
    func eat() {
        print("I eat everything")
    }
}

//2.
class Elephnat: Animal {
    override func eat() {
    print("I eat pineapple")
    }
}

class Tiger: Animal {
    override func eat() {
   print("I eat meat")
    }
}

class Horse: Animal {
    override func eat() {
    print("I eat wheat")
    }
}
//3.​weeklyHot
class Zoo {
    var weeklyHot: Animal
    init(​weeklyHot: Animal) {
        self.weeklyHot = ​weeklyHot
    }
}

let zoo = Zoo(​weeklyHot: Tiger(gender: .male))

zoo.weeklyHot = Tiger(gender: .female)
zoo.weeklyHot = Elephnat(gender: .male)
zoo.weeklyHot = Horse(gender: .undefind)

/*4.What have you learned in ​Object-Oriented Swift​ session?
 > struct 與 class 的用法＆相同與不同之處
 > method 的用法 ： method 是關連於某一個 class (或 struct, enum)的 function
 > class 的繼承方法，包括 override 如何覆蓋原有的特性。
*/

/*5.What’s the difference between ​Struct​ and ​Class
 class 是 reference type ，有讓一個 class 繼承另一個 class 的特性
 struct 是 value type ， struct 有預設的建構值 class 沒有，在建構 class 時需要初始化建構值。
 */

/*6.What’s the difference between ​instance method​ and ​type method
 instance method 是需要實例化才可以呼叫的方法
 type method 是不用實例化就可以呼叫的方法，type method 在 class 使用的前綴詞可以是 static 也可以是 class ，差別在於 class func 可以被子代覆寫，static func 不行;在 struct 與enum 使用的前綴詞都是 static。
 實例不能呼叫type method，相對的，class(或struct)未經實例化是不能呼叫instance method的。
 */

/*7.What does ​Initilizer​ do in class and struct
 在創建 struct 或 class 時，必須為所有屬性設置一個初始值，可以在一開始定義時就給定一個值，也可以在 init()  內定義它。
 swift 在 struct 給了預設的建構值，如果不定義 init()，就會使用預設的 init() ，若一但自行定義了 init() ，那就會屬於 customed initializer。
 */

/*8.What does ​self​ mean in an instance method and a type method ?
  在參數名稱與實例的某個屬性名稱相同的時候，可以使用 self 來區分
 */

/*9. What’s the difference between ​reference type​ and ​value type​ ?
 value type 為實值型別會保留變數原本的值，vale type 會將原本的資料複製產生另一個新的資料，因此當我們修改一個其中一個值，並不會影響另一個值。
  value type 包含 Int, String, Bool, struct...
 reference type 為參考型別會保留變數的位置，當設定 reference type 的變數等於另一個變數時，它們將儲存在同一個地方，這時兩個變數的資料就會相同。
 */
