import UIKit

let names = ["Taylor", "Paul", "Adele"]
let count = names.reduce(0) { $0 + $1.count }
print(count)

/// This starts with a total of 0 (the parameter passed in to reduce(), then adds that to the count of each string in the array. So, it starts by adding 6 for Taylor (so the running total is 6), then adds 4 for Paul (so the running total is 10), then adds 5 more for Adele (so the running total is 15.)

//=====================

let numbers = [1,3,5,7,9]
let result = numbers.reduce(0,+)
print(result)
