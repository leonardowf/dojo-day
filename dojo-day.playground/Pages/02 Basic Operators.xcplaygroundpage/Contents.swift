/*:
 ## Operadores básicos
 */

import UIKit

let (x, y) = (1, 2)


// Nil Coalescing
var optional: String?
var value = optional ?? "Value when `optional` is nil"

// operador de range
for index in 1...5 {
    //It will iterate 5 times.
    index

}

var array = [1,2,3]

for index in 0..<array.count{
    index
}

// Enumerate array with index and value, C loop will be removed soon
for (index, value) in array.enumerated() {
    print("value \(value) at index \(index)")
}
