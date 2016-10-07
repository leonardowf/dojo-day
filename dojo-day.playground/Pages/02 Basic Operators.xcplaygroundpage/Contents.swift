/*:
 ## Operadores básicos
 */

import UIKit

let (x, y) = (1, 2)


// Nil Coalescing
var optional: String?
var value = optional ?? "valor quando `optional` é nil"

// operador de range
for index in 1...52 {
    index
}

var array = [1,2,3]

for index in 0..<array.count{
    index
}

//: enumera com indice e valor, C loop vai ser removido em breve!!
for (index, value) in array.enumerated() {
    print("value \(value) at index \(index)")
}
