/*:
 ## Controle de fluxo
 */

//: ### Switches

//:não precisa de break
let someChar = "e"
switch someChar {
case "a", "e", "i", "o", "u":
    print("\(someChar) is a vowel")
default:
    print("\(someChar) is a consonant")
}

//:dá pra fazer range matching
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

//:dá pra usar tuplas
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

//:dá pra bindar valores
let anotherPoint = (0, 0)
switch anotherPoint {
case (let x, 0):
    print("on the y-axis with an x value of \(x)")
case (0, let y):
    print("on the x-axis with a y value of \(y)")
case let (z, w): //esse é o default
    print("somewhere else at (\(z), \(w))")
}

//:dá pra bindar valores e testar condições
switch anotherPoint {
case let (x, y) where x == y:
    print("x = y : \(x) = \(y)")
default:
    break
}
