import UIKit

var greeting = "Hello, playground"

enum Token {
    case Number(Int)
    case Plus
}

/*struct MyErrorStruct : ErrorType {
  let _domain: String
  let _code: Int
}*/

// turning some input into tokens, by reading each character
// from the start index
protocol ErrorType {
    //InvalidCharacter(Character)
}

class Lexer {
    let input: String
    var position: String.Index
    
    enum Error: ErrorType {
        case InvalidCharacter(Character)
    }
    
    init(input: String){
        self.input = input
        self.position = self.input.startIndex
    }
    
    func peek() -> Character? {
        // base on current index
        if(position < input.endIndex) {
            return input[position]
        } else {
            return nil
        }
    }
    // move to the next
    func advance() {
        assert(position < input.endIndex, "Cannot advance past the end!")
        //position+=1
        position = input.index(position, offsetBy: 1)
    }
    
    func getNumber() -> Int {
        var value = 0
        while let nextCharacter = peek() {
            // if 2 , 5 , 3 -> 253 (real number)
            switch nextCharacter {
                case "0" ... "9":
                    let digitValue = Int(String(nextCharacter))!
                    value = 10 * value + digitValue
                    advance()
                default:
                    return value
            }
        }
        return value
    }
    // lex generate tokens
    func lex() throws -> [Token] {
        // generate an array of TOKEN, it can be num or sign
        var tokens = [Token]()
        
        while let nextCharacter = peek() {
            switch nextCharacter {
                case "0" ... "9":
                    //
                    let value = getNumber()
                    tokens.append(.Number(value))
                case "+":
                    tokens.append(.Plus)
                    advance()
                    
                case " ":
                    advance()
                default:
                    //advance()
                    // throw Error.InvalidCharacter(nextCharacter)
            }
        }
        return tokens
    }
}
