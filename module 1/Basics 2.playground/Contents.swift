import UIKit
// OOPs - Object Oriented Programming
/*
class Abc
{
    var a = 0
    func printA(a:Int)
    {
        print(a)
    }
}
var obj = Abc()
obj.printA(a: 24)

class Xyz:Abc
{
    var b = 0
    override func printA(a: Int)
    {
        super.printA(a: a)
        print("Call from child")
    }
    
}

var obj1 = Xyz()
obj1.printA(a: 90)

/*
Create Animal class with properties like number
of legs has fur or not etc.
Then create individual animal class like dog, cow, snake and inherite Animal.
 */

class Animal
{
    var legs = 0 // no of legs
    var fur = 0 // legs with\without fur
    func printB(legs: Int, fur: String)
    {
        print("no of legs - \(legs)")
        print("animal has fur - \(fur)")
    }
}
class Dog:Animal
{
    var legs1 = 0
    override func printB(legs: Int,fur: String)
    {
        print("Dog class")
        super.printB(legs: legs, fur: fur)
    
    }
}
var obj2 = Dog()
obj2.printB(legs: 4, fur: "Yes")
class Snake:Animal
{
    var legs2 = 0
    override func printB(legs: Int,fur: String)
    {
        print("Snake class")
        super.printB(legs: legs, fur: fur)
        
    }
}
var obj3 = Snake()
obj3.printB(legs: 0, fur: "NO")


class Animal
{
    var noOfLegs = 0
    var hasFur = false
}

class Dog : Animal
{
    init(leg:Int,fur:Bool) {
        super.init()
        noOfLegs = leg
        hasFur = fur
    }
    
}
var obj2 =  Dog(leg:4,fur:true)
print("The number of legs of this dog are",obj2.noOfLegs)
print("does dog have fur -",obj2.hasFur)
*/
/*
var dog = "🐶"
let 🐱 = "Cat"

// emotions

// method 1 to check emotions using emojis
 
var emoDict = [String:String]()
emoDict = ["happy":"😊","sad":"😔","angry":"😡","laughing":"😂"]
func checkEmo(emotion:String)
{
    switch emotion
    {
    case "happy": print("😊")
    case "sad": print("😔")
    case "angry": print("😡")
    case "laughing": print("😂")
    default:
        print("no emotion detected")
    }
}
checkEmo(emotion: "happy")


// method 2 to check emotions using emojis

var emoDict = [String:String]()
emoDict = ["happy":"😊","sad":"😔","angry":"😡","laughing":"😂"]
func checkEmo(emotion:String)
{
    for i in emoDict
    {
        if ( emotion == i.key)
        {
            print(i.value)
        }
        else
       {
            print("no emotion detected")
       }
    }
}
checkEmo(emotion: "happy")


// method 3 to check emotions using emojis

var emoDict = [String:String]()
emoDict = ["happy":"😊","sad":"😔","angry":"😡","laughing":"😂"]
func checkEmo(emotion:String)
{
    switch emotion
    {
    case "happy": print(emoDict["happy"]!)
    case "sad": print(emoDict["sad"]!)
    case "angry": print(emoDict["angry"]!)
    case "laughing": print(emoDict["laughing"]!)
    default:
        print("no emotion detected")
    }
}
checkEmo(emotion: "sad")
*/

// method 4 to check emotions using emojis

var emoDict = [String:String]()
emoDict = ["happy":"😊","sad":"😔","angry":"😡","laughing":"😂"]
func checkEmo(emotion:String)
{
    switch emotion
    {
    case "happy": if let emo = emoDict["happy"]
                {
                    print(emo)
                }
    default:
        print("no emotion detected")
    }
}
checkEmo(emotion: "happy")
