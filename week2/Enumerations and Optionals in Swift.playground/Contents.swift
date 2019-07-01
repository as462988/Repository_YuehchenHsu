//1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    func getPrice() {
        switch self {
        case Gasoline.oil92:
            "This oil price is 27 "
        case Gasoline.oil95:
            "This oil price is 28.5 "
        case Gasoline.oil98:
            "This oil price is 30.5 "
        }
}
//func getPrice(price: Gasoline) {
//    switch price {
//    case Gasoline.oil92:
//        "This oil price is 27 "
//    case Gasoline.oil95:
//        "This oil price is 28.5 "
//    case Gasoline.oil98:
//        "This oil price is 30.5 "
//    }
}
print(Gasoline.oil92.rawValue)
/*Please explain what is enum ​associate value​ and how it works
在定義 enum 的 case 時可以給定關聯值，在實作這個 case 時就可以把關聯值拿出來用，譬如：switch
*/
enum Gender {
    case male (age: Int)
    case female
    
    func printAge() {
        switch self {
        case .male(let age): print(age)
        default: print("I don't want to tell you")
            
        }
        
    }
}
Gender.male(age: 18).printAge()

//2.
class People {
    var pet: Pet?
}

class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

let kevin = People()
let cat = Pet(name: "wiki")
kevin.pet = cat

func someoneHavePets(people: People) -> String? {
    guard let pet = people.pet  else {
        print("people doesn't have a pet")
        return nil
    }
    print(pet.name)
    return pet.name
}
someoneHavePets(people: kevin)


let Mom = People()
let dog = Pet(name: "Nunu")

func somebodyHavePet(people: People) -> String? {
    if let petOfMom = people.pet {
        print(petOfMom.name)
    }else{
        print("This one don't have pet!")
    }
    return nil
}
someoneHavePets(people: Mom)








