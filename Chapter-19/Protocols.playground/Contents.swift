import UIKit

var greeting = "Hello, playground"

func padding(amount: Int) -> String {
    var paddingString = ""
    for _ in 0 ..< amount {
        paddingString += " "
    }
    
    return paddingString
}

// first create a row label
let rowLabels = ["Joe", "Karen", "Fred"]
let columnLabels = ["Age", "Years of Experience"]

let data = [
    [30,6],
    [40,18],
    [50,20],
]

func printTable(rowLabels: [String], columnLabels: [String], data: [[Int]]) {
    /*for row in data {
        var out = ""
        
        for item in row {
            out += "\(item) |"
        }
        
        print(out)
    }*/
    //
    // for each label, count its character amount
    let rowLabelWidths = rowLabels.map { $0.count }
    
    guard let maxRowLabelWidth = rowLabelWidths.max() else {
        return
    }
    
    // first row
    var firstRow: String = padding(amount: maxRowLabelWidth) + " |"
    var columnWidths = [Int]()
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnHeader.count)
    }
    
    print(firstRow)
    
    for(i, row) in data.enumerated() {
        // calculate how many space need for padding
        let paddingAmount = maxRowLabelWidth - rowLabelWidths[i]
        var out = rowLabels[i] + padding(amount: paddingAmount) + " |"
        
        // finally add the item onto the row,
        // and design it's padding
        /*for item in row {
            
            out += "\(item) |"
        }*/
        
        // design current row width base on the row above
        for(j, item) in row.enumerated() {
            let itemString = " \(item) |"
            let paddingAmount = columnWidths[j] - itemString.count
            out += padding(amount: paddingAmount) + itemString
        }
        
        // print
        print(out)
        
        
    }
}

printTable(rowLabels: rowLabels, columnLabels: columnLabels, data: data)







