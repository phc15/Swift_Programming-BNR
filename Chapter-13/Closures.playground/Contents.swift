import UIKit


var volunteerCounts : [Int] = [1,3,40,32,2,53,77,13]


func sortAscending(i: Int, j: Int) -> Bool {
return i < j }

let volunteersSorted = volunteerCounts.sorted(by: sortAscending)


let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)
