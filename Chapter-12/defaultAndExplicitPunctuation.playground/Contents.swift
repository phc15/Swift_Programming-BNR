import UIKit

var greeting = "Hello, playground"

// default value parameter
func divisionDescription(forNumerator num: Double, andDnominator den: Double, withPunctuation punctuation:
 String = ".")
{
    print("\(num) divided by \(den) equals \(num / den)\(punctuation)")
}

divisionDescription(forNumerator: 9.0, andDnominator: 3.0)
// or you can update by replace it with the new value.
divisionDescription(forNumerator: 9.0, andDnominator: 3.0, withPunctuation: "!")

// variadic parameters
func printPersonalGreetings(names: String...) {
    for name in names {
        print("\(name)")
    }
}

printPersonalGreetings(names: "Alex", "Chris", "Drew", "Pat")

// in-out parameters
var error = "The request failed:"
func appendErrorCode(code: Int, toErrorString errorString: inout String){
    if code == 400 {
        errorString += " bad request."
    }
}
// the variable you pass into the parameter is preceded by an ampersand (􏰶). This indicates that the variable will be modified by the function.
appendErrorCode(code: 400, toErrorString: &error)
error

func grabMiddleName(name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(name:( "Matt", nil, "Mathias"))
if let theName = middleName {
    print(theName)
}
