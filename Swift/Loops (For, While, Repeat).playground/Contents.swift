// tutorial link: https://www.youtube.com/watch?v=9Snw7polcBU
// Youtube title : Swift For Beginners - Loops (For, While, Repeat)

import UIKit

let nbaAllStars         = ["LeBron James", "Anthony Davis", "Kawhi Leonard", "Luka Doncic", "James Harden"]

let allStarPositions    = ["PF": "LeBron James",
                           "C": "Anthony Davis",
                           "SF": "Kawhi Leonard",
                           "PG": "Luka Doncic",
                           "SG": "James Harden"]

//======== FOR Loop ==========

//--- Iterating through an array

for player in nbaAllStars {
    print(player)
}

//--- create array of random numbers

var randomInts: [Int] = []

//looping for a specific number of times
for _ in 0..<25 {
    let randomInt = Int.random(in: 1...1000)
    randomInts.append(randomInt)
}

print(randomInts)

//--- print a numbered list of all stars

for i in 0..<nbaAllStars.count {
    print("\(i+1). \(nbaAllStars[i])")
}

//--- iterting through dictionary

for (position, player) in allStarPositions {
    print("\(player) is starting at the \(position) position")
}
//arrays have a specific order. But dictionaries doesn't. So previous print won't be in order.


//--- WHERE keyword in for loop

//check James Harden is olaying in the game.

for player in nbaAllStars {
    if player == "James Harden" {
        print("James Harden is playing.")
    }
}

//with where keyword
for player in nbaAllStars where player == "James Harden" {
    print("James Harden is playing.")
}

// ======== WHILE loop =========

//while loop will run as long as a certain condition is true.
//if that condition never turns true, that while loop will run forever. (It's called infinite loop)

var teamLebronScore = 0
var teamGiannisScore = 0

while teamLebronScore < 21 && teamGiannisScore < 21 {
    let didTeamLebronScore = Bool.random()
    let score = Int.random(in: 1...3)

    if didTeamLebronScore {
        teamLebronScore += score
        print("Team Lebron Score = \(teamLebronScore)")
    } else {
        teamGiannisScore += score
        print("Team Giannis Score = \(teamGiannisScore)")
    }
}

if teamLebronScore > teamGiannisScore {
    print("Team Lebron won the game by a score of \(teamLebronScore) to \(teamGiannisScore)")
} else {
    print("Team Giannis won the game by a score of \(teamGiannisScore) to \(teamLebronScore)")
}


repeat {
    let didTeamLebronScore = Bool.random()
    let score = Int.random(in: 1...3)

    if didTeamLebronScore {
        teamLebronScore += score
        print("Team Lebron Score = \(teamLebronScore)")
    } else {
        teamGiannisScore += score
        print("Team Giannis Score = \(teamGiannisScore)")
    }
} while teamLebronScore < 21 && teamGiannisScore < 21

if teamLebronScore > teamGiannisScore {
    print("Team Lebron won the game by a score of \(teamLebronScore) to \(teamGiannisScore)")
} else {
    print("Team Giannis won the game by a score of \(teamGiannisScore) to \(teamLebronScore)")
}
