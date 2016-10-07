/*:
 # DOJO DAY SWIFT
 */

/*:
 ## O básico
 */

import UIKit

var str = "Hello, world"
let hello = "Olá, mundo"

/*: Optionals podem ser nulos ou o valor que armazenam, se tiverem */
var optionalInteger: Int?
optionalInteger = 42

let word = "blz?"

/*: Dá pra somar string com + ou interpolar com ```` \() ```` */
print(hello + " " + word)
print("\(hello) \(word)")

/*: Dá pra deixar números mais legiveis com _ */
var paddedInteger = 1_000_000

/*: Tuplas podem ser de qualquer tipo e ter qualquer numero de elementos */
let success = (200, "Success")
typealias Success = (Int, String)
let exito: Success = success

let x = Success(0, "banana")

/*: Voce pode explodir uma tupla assim */
let (code, message) = success

/*: Se voce nao for usar um valor dá pra ignorar com _ */
let (response, _) = success

/*: A tupla pode ser acessada pelo index */
success.0
success.1

/*: Dá pra por nome na declaração da tupla */
let someTuple = (number: 456, assertion: "Yes")
someTuple.number
someTuple.assertion


/*: Optionals podem ou nao ter um valor */
var optional: Int?

if optional != nil {
    "Não é nulo"
    optional!
} else {
    "É nulo"
}

/*: Voce pode fazer o unwrap direto no if */

if let value = optional {
    "Não é nulo!!!"
    value
} else {
    "é NULO"
}

/*: Ou usar meu comando favorito, o guard */
func guardExample(value: Int?) {
    guard let banana = value else {
        "é nulo!!!"
        return
    }

    print("valor passado não é nulo")
    print("value contém: \(banana)")
}

guardExample(value: optional)

/*:
 Dá pra usar implicitly unwrapped optionals. O valor se torna disponível assim que acessado. não recomendado mas as vezes necessário
 */

let knownString: Int! = 10
if knownString != nil {
    "It's got a value"
    knownString
}

