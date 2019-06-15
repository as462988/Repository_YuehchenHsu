/*---------------------------------------------------------------
Assignment 3: Swift Collection and Control Flow - Colletion
 ---------------------------------------------------------------*/

//1.Please create an empty array with String data type and save it in a variable named myFriends​.
var myFriends: [String] = []

//2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name in to ​myFriends​ array.
myFriends += ["Ian", "Bomi", "Kevin"]

//3.Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to add Michael to the end of ​myFriends​ array.
myFriends.insert("Michael", at: 3)

//4.Because I usually hang out with Kevin, please move Kevin to the beginning of the myFriends​ array
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)

//5.
for friend in myFriends {
    print(friend)
}

//myFriends.forEach { friend in
//    print(friend)
//}

//6.Now I want to know who is at index 5 in the ​myFriends​ array, try to find the answer for me. Please explain how did you get the answer and why the answer is it.
if myFriends.count >= 6 {
    print(myFriends[5])
}else {
    print("Out of range, the index 5 of myFriends can not be found.")
}

//7.
myFriends.first

//8.
myFriends.last

//9.Please create an dictionary with keys of type String, value of type Int, and save it in a variable named ​myCountryNumber​.
var myCountryNumber: [String:Int] = [:]

//10.Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber.updateValue(81, forKey: "JP")

//11.Change the ‘GB’ value from 44 to 0.
myCountryNumber["GB"] = 0

//12.How to declare a empty dictionary?
var newDictionary : [Int:String] = [:]

//13.How to remove a key-value pair in a dictionary?
var value:[Int:String] = [1:"one", 2:"two",3:"three"]
value.removeValue(forKey: 2)

/*---------------------------------------------------------------
Assignment 3: Swift Collection and Control Flow - Control Flow
---------------------------------------------------------------*/
//1.
let lotterNumber:[Int] = [10, 9, 8, 7, 6]
if (lotterNumber.count >= 3) {
    for index in lotterNumber.count-3...lotterNumber.count-1{
        print(lotterNumber[index])
    }
}else {
    print("The count of lotterNumber less than three.")
}

//2.
for number in 5...10{
    print(number)
}
//*-----------------------------------------------*

for number2 in stride(from: 10, to: 5, by: -2){
    print(number2)
}

//3.
var i:Int = 5
while (i < 11) {
    print(i)
    i += 1
}
//*-------------*

var i2:Int = 10
while (i2 >= 6 )  {
    print(i2)
    i2 -= 2
}

//4.
var i3:Int = 5
repeat{
    print(i3)
    i3 += 1
}while (i3 < 11)
//*-------------*
var i4:Int = 10
repeat{
    print(i4)
    i4 -= 2
}while (i4 >= 6)

//5.
var isRaining:Bool = false
if isRaining{
    print("It’s raining, I don’t want to work today.")
} else{
    print("Although it’s sunny, I still don’t want to work today.")
}

//6.
var jobLevel:Int = 9
switch jobLevel {
    case 1: "Member"
    case 2: "Team Leader"
    case 3: "Manager"
    case 4: "Director"
default: "We don't have this job"
}



