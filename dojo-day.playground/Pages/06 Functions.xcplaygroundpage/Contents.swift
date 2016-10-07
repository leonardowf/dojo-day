
func sayHello(personName: String) -> String {
    return "Hello \(personName)!"
}

// retorna uma tupla ou nil
func minMax(array: [Int]) -> (min: Int, max:Int)? {
    if array.isEmpty {return nil}
    return (0,1)
}

//Parametro pré definido
func join(string s1: String, toString s2: String, withJoiner joiner: String = " ")
    -> String {
        return s1 + joiner + s2
}

//A variadic param
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

//parametros por referencia
func swapTwoInts( a: inout Int, b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

//dá pra passar funcoes como parametro de funcoes
func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(mathFunction(a, b))")
}


//Start
sayHello(personName: "Juan")

minMax(array: [])

join(string: "Hello", toString: "World", withJoiner: "New")
join(string: "", toString: "")

arithmeticMean(numbers: 4,5,6,7)

var someInt = 3
var anotherInt = 107
swapTwoInts(a: &someInt, b: &anotherInt)
someInt

//Here we are defining a var of type function.
var mathFunction: (String) -> String = sayHello

var xxx: (Int, Int) -> Int = { a, b in
    return 666
}

