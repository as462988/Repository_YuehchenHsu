
enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumerGame {
    var targeNumber = 10
    
    func guess(number: Int) throws {
        guard number == targeNumber else {
        throw GuessNumberGameError.wrongNumber

        }
        print("Guess the right number: \(targeNumber)")
    }
}

let someGame = GuessNumerGame()
//try someGame.guess(number: 20)
do{
    try someGame.guess(number: 20)
}catch let error {
    print("This targeNumber isn't correct! ")
}










