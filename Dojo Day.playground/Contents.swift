import UIKit
/*:
 # Dojo Day
 */
var str = "Hello, playground"
let hello = "Hola, qué tal"

/*: Optionals can be nil or the number they store, if any. */
var optionalInteger: Int?
optionalInteger = 42

/*: Reserved words can be used as variables or constants using `` */
let `private` = "private word"
var word = `private`


/*: Printing strings can be achieved by "sum" or by ```` \() ```` */
print(hello + " " + word)
print("\(hello) \(word)")


/*: Padding numbers with "_" makes them more readable */
var paddedInteger = 1_000_000


/*:
 Explicit conversion must be made when working with explicit types.
 For any other case, use the Int class
 */
let thousand: UInt16 = 1_000
let one: UInt8 = 1
let thousandAndOne = thousand + UInt16(one)


/*:Inferred as Int by default */
let anotherNumber: Int = Int(UINT32_MAX)
let number = 6745
let result = anotherNumber + number


/*: ````typealias```` is a convenient way to refer to another type in a contextual way. */
typealias AudioResolution = UInt16
AudioResolution.min

/*: Tuples can be of any kind and of any number of elements */
let success = (200, "Success")
typealias Success = (Int, String)
let exito: Success = success

let x = Success(0, "banana")

/*:
 If you receive a response in this format, it can be conveniently stored like this.
 */
let (code, message) = success

/*: If you just need one value. */
let (response, _) = success

/*: Values can be accessed like indexes */
success.0
success.1

/*: Or, names can be added upon declaration */
let someTuple = (number: 456, assertion: "Yes")
someTuple.number
someTuple.assertion


/*: Optionals may have a value or not. */
let optional: Int? = 2

if optional != nil {
    "It's not nil!"
    optional!
} else {
    "It's nil"
}

/*: You can use optional binding to test for an unassigned value as well */

if let value = optional {
    "It's not nil!"
    value
}else {
    "It's nil"
}

/*:
 You can also use implicitly unwrapped optionals. Value becomes accessible automatically once a value has been set
 */

let knownString: Int! = 10
if knownString != nil {
    "It's got a value"
    knownString // No need for explicit unwrapping
}

let (a, b) = (1, 2)

//Addition is also available for strings
let string = "hello, " + "world"

//Nil Coalescing Operator
//It's equivalent to (a ? b : c), but for optionals

var optionalString: String? //Currently nil

// optional = "Some Value" // Uncomment/comment this line and observe what values get printed below
var value = optionalString ?? "Value when `optional` is nil"

// above statement is equivalent to below
// if optional != nil {
// 	value = optional! //Unwrapped value
// } else {
//  	value = "Value when `optional` is nil"
// }

//Range operators
for index in 1...5 {
    //It will iterate 5 times.
}

var array = [1,2,3]

for index in 0..<array.count{
    //It will iterate (array.count - 1) times.
}

// Enumerate array with index and value, C loop will be removed soon
for (index, value) in array.enumerated() {
    print("value \(value) at index \(index)")
}

var shoppingList: [String] = ["Eggs", "Pigs"]
var anotherShoppingList = ["Eggs", "Pigs"]				//Both are the same


if shoppingList.isEmpty { //Checks if count == 0
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Cow") //At the end of the array
shoppingList += ["Bird", "Shark"]

shoppingList[1...3] = ["Bananas", "Apples", "Strawberries"] //Replace several items at once

shoppingList.insert("Maple Syrup", at: 0) //Inserts element at index

let mapleSyrup = shoppingList.remove(at: 0) // Returns removed item

var emptyArray = [Int]() //Initialize empty array
var anotherEmptyArray: [Int] = [] //Also valid
var repeatingArray = [Int](repeating: 0, count: 3) //Initalizes an array of length 3 with zeros

var compoundArray = array + emptyArray

var reversedShoppingList: [String] = shoppingList.reversed()

reversedShoppingList.removeLast() // Removes last item. Remove the first with removeFirst(). No returned value.
reversedShoppingList.popLast() // Pops the last item, removing it from the array and also returning it. Note that if the array is empty, the returned value is nil.

//Dictionaries

var airports: [String: String] = ["JFK": "John F. Kennedy", "SCL": "Arturo Merino Benitez"]
airports = ["JFK": "John F. Kennedy", "SCL": "Arturo Merino Benitez"] //Also valid

airports["JFK"] = "New York"

airports.updateValue("Los Angeles", forKey:"LAX") //Updates or creates the value. Returns optional w/ previous value

if let airportName = airports["DUB"] { //Subscript always returns optional in case value is not set.
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["LAX"] = nil
airports.removeValue(forKey: "LAX") //Both remove the key-value pair

//Iterating over the whole dictionary
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

//Iterating on Keys
for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
//Iterating on Values
for airportName in airports.values {
    print("Airport name: \(airportName)")
}

//Empty Dictionaries
var numbers = [Int: String]()
numbers = [:]     			  //Both do the same

numbers[16] = "sixteen"

//Index is implicitly declared
for index in 1...5 {
    print("Index is \(index)")
}

//In this case, we don't care about the value.
for _ in 1..<6 {
    print("No value")
}

//Use tuples
let dictionary = ["one": 1, "two": 2, "three": 3]
for (numberName, numberValue) in dictionary {
    print("\(numberName) is \(numberValue)")
}

//Go through a string
var char = "e"
for char in "Yes".characters {
    print("\(char)")
}

//Switches

// No need for break, and every case must have some code.
let someChar = "e"
switch someChar {
case "a", "e", "i", "o", "u":
    print("\(someChar) is a vowel")
default:
    print("\(someChar) is a consonant")
}

//There can also be range matching

let count = 3_000_000_000_000
let countedThings = "stars"

switch count {
case 0...9:
    print("a few")
case 10...10_000:
    print("many")
default:
    print("a lot of")
}

//Use tuples

let coord = (1,1)

switch coord {
case (0,0):
    print("Origin")
case (_, 0):
    print("x axis")
case (0, _):
    print("y axis")
case (-2...2, -3...3):
    print("within boundries")
default:
    print("out of bounds")
}

//Value binding: Assign temp values to variables inside the cases.
let anotherPoint = (0, 0)
switch anotherPoint {
case (let x, 0):
    print("on the y-axis with an x value of \(x)")
case (0, let y):
    print("on the x-axis with a y value of \(y)")
case let (z, w): //This acts as the default case. Since it is only assigning a tuple, any value matches.
    print("somewhere else at (\(z), \(w))")
}

// Bind both values, plus test a condition.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y : \(x) = \(y)")
default:
    break
}

// The fallthrough line forces the switch statement to fall into the default case after a previous case.
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y")
    fallthrough
default:
    print(" are equal")
}

//Nesting while, for and switches can be confusing sometimes
//Use labels to better use the break and continue statements

master: while true {
    loop: for rats in 1...5{
        continue master
    }
}
