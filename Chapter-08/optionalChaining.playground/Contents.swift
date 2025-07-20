import UIKit

var greeting = "Hello, playground"

var errorCodeString: String?
errorCodeString = "404"

var errorDescription: String?

if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404 {
    errorDescription = ("\(errorCodeInteger+200): the requested resource was not found.")
}

var upCaseErrorDescription = errorDescription?.uppercased()

upCaseErrorDescription

upCaseErrorDescription?.append(contentsOf: " PLEASE TRY AGAIN")
upCaseErrorDescription
