import UIKit

// String

var str = "Hello, playground"

var str1 = " Hi There"

str + " " + str1

str

str1

print(str1)

print(str, terminator:"")

print(str, terminator:"+")

str.count

str1.customMirror

str.append("!")

str.append(str1)

//Number

var a = 15

var b = 12.54

Double(a) + b

var c = Double(a) + b

print(c, terminator:"")

print(str1, c, terminator:"")

print("Before Swap", terminator:"")
var d = 12
var e = 15

// swap two numbers without variable using swap function

swap(&d , &e)

print("After Swap", terminator:"")
print(d, terminator:"")
print(e, terminator:"")

// swap two numbers without variable

print("Before swap d = \(d) and e = \(e).", terminator:"")

d = d*e // +
e = d/e // -
d = d/e // -

print("After swap d = \(d) and e = \(e).", terminator:"")

// if Condition

let f = 11
if (f % 2 == 0)
{
    print("the number \(f) is Even", terminator:"")
}
else
{
    print(" the number \(f) is Odd",terminator:"")
}

// Switch case

switch f
{
    case 1: print("It's One")
    case 2: print("It's Two")
    case 3: print("It's Three")
default:
    print("It's something else", terminator:"")
}

// basic calculator

var g = 12
var h = 6
var result : Character = "/"
switch result
{
case "+" : let i = g + h
    print("Addition of g & h is \(i)")
case "-" : let i = g - h
    print("Subtraction of g & h is \(i)")
case "*" : let i = g * h
    print("Multiplication of g & h is \(i)")
case "/" : let i = g / h
    print("Division of g & h is \(i)")
default:
    print("Invalid result")
}

//Array

let arr = [ "Alex", "Bob", "James"]
var changableArr = [String]()

// arr.append("xyz")
changableArr.append("Sui")
changableArr.append(contentsOf: arr)
changableArr.insert("Fred", at: 3)
changableArr.remove(at: 2)
print(changableArr)
changableArr.count
changableArr.capacity

// LOOP
for j1 in changableArr
{
    print(j1)
}

var Myarr = [String]()
Myarr = ["john", "jordan", "stacey", "kirito"]

Myarr.append("susan")

// dictionary

var studData = [1:"Alex", 2:"James", 3:"Fred"]

studData.updateValue("Sui", forKey: 2)
studData.updateValue("may", forKey: 4)
print(studData)

studData.removeValue(forKey: 3)
print(studData)

// loop
for j2 in studData
{
    print(j2.value)
    print(j2.key)
}

// methods of function

func abc()
{
    print("Swift Function")
}

abc()

func name(firstName:String, lastName:String)
{
    print(" Full Name = \(firstName) \(lastName) ", terminator:"")
}
name(firstName: "Armaan", lastName: "Kalia")

func add(num1:Int,num2:Int)->Int
{
    return num1+num2
}

print(add(num1: 12, num2: 45))

// assignment - create a calculator function
func calc(num1:Int,num2:Int)->Int
{
    let result : Character = "/"
    var answer = 0
    switch result
{
    case "+" : answer=num1 + num2

    case "-" : answer=num1 - num2
  
    case "*" : answer=num1 * num2

    case "/" : answer=num1 / num2
    
    default:
        print("Invalid result")
    }
    return (answer)
}
print("the answer is", calc(num1: 12, num2: 12))

// Binary Operatiosns

let a1 = 12
let b1 = 15

a1 | b1 // or
a1 & b1 // and
a1 ^ b1 // xor

a1 >> 2
b1 << 3

String(a1, radix:2) // convert to binary
String(a1, radix:16) // hexadecimal
String(a1, radix:10) // decimal
String(a1, radix:8) // octal

String(b1, radix:2)
String(b1, radix:16)
String(b1, radix:10)
String(b1, radix:8)














