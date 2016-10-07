import UIKit

//: Arrays e dicionários usam generics e podem ser mutaveis ou imutaveis dependendo se sao declarados com var ou let

//: Arrays

var shoppingList: [String] = ["Eggs", "Pigs"]
var anotherShoppingList = ["Eggs", "Pigs"]


if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}

shoppingList.append("Cow")
shoppingList += ["Bird", "Shark"]

shoppingList[1...3] = ["Bananas", "Apples", "Strawberries"]

shoppingList.insert("Maple Syrup", at: 0)

let mapleSyrup = shoppingList.remove(at: 0)

var emptyArray = [Int]()
var anotherEmptyArray: [Int] = []
var array = [Int](repeating: 0, count: 3)
var compoundArray = array + emptyArray

var reversedShoppingList: [String] = shoppingList.reversed()

reversedShoppingList.removeLast()
reversedShoppingList.popLast()

//: Dictionaries

var airports: [String: String] = ["JFK": "John F. Kennedy", "SCL": "Arturo Merino Benitez"]
airports = ["JFK": "John F. Kennedy", "SCL": "Arturo Merino Benitez"]

airports["JFK"] = "New York"

airports.updateValue("Los Angeles", forKey:"LAX")

if let airportName = airports["DUB"] {
    print("The name of the airport is \(airportName).")
} else {
    print("That airport is not in the airports dictionary.")
}

airports["LAX"] = nil
airports.removeValue(forKey: "LAX") //Both remove the key-value pair

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

var numbers = [Int: String]()
numbers = [:]     			  //Both do the same

numbers[16] = "sixteen"
