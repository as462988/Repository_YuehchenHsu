//1.
protocol PoliceMan{
    func arrestCriminals()
}

//2.4.
struct Person: PoliceMan {
    let name: String
    let toolMan: ToolMan
    func arrestCriminals(){
    }
}

//3.
protocol ToolMan{
    func fixComputer()
}

//5.
struct Engineer: ToolMan{
    func fixComputer(){
        }
}

let nameofsteven = Person(name: "Steven", toolMan: Engineer())

