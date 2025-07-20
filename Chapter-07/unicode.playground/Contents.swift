import UIKit

var greeting = "Hello, playground"

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground  += "!"

for c: Character in mutablePlayground {
    print("'\(c)'")
}

let oneCoolDude = "\u{1F60E}"
// The below two is equivalent
let aAcute = "\u{0061}\u{0301}"
let aAcutePrecomposed = "\u{00E1}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// canonical equivalence
let b = (aAcute == aAcutePrecomposed)

let fromStart = playground.startIndex
let toPosition = 4
//let end = fromStart.advance(By:toPosition)
let end = playground.index(playground.startIndex, offsetBy: 4)
let fifthCharacter = playground[end]
