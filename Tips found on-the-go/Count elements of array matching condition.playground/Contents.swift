import UIKit

// find the number of even numbers in an array
let a: [Int] = [1,3,4,2,5,7,8]
let count = a.filter({ $0 % 2 == 0 }).count
print(count)

//====================================================
/// This is the code I put for a Hackerrank quiz. Filtering is used here also
func plusMinus(arr : [Int]) -> Void {
    // Write your code here
    let totalCount = arr.count
    
    let plusCount = arr.filter { value in
        return value > 0
    }.count
    
    let minusCount = arr.filter { value in
        return value < 0
    }.count
    
    let zeroCount = arr.filter { value in
        return value == 0
    }.count
    
    let plusRatio: Double = Double(plusCount) / Double(totalCount)
    let minusRatio = Double(minusCount) / Double(totalCount)
    let zeroRatio = Double(zeroCount) / Double(totalCount)
    
    print(String(format: "%.6f", plusRatio))
    print(String(format: "%.6f", minusRatio))
    print(String(format: "%.6f", zeroRatio))
    
}

plusMinus(arr: [-4,3,-9,0,4,1])
