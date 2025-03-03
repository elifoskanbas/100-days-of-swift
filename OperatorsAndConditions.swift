//
//  OperatorsAndConditions.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 3.03.2025.
//

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

let intNumber: Int = 10
let doubleNumber: Double = 20
print(Double(intNumber) + doubleNumber)

//--operator overloading--
let doubleMeaning = 42 + 42

//in strings
let fakers = "Fakers gonna "
let action = fakers + "fake"

//in arrays
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//we can not add one dictionary to other with "+" operator
var dict1 = ["a": 1, "b": 2]
let dict2 = ["c": 3, "d": 4]
dict1.merge(dict2) { (current, _) in current }

//we can not add one set to other with "+" operator
let set1: Set = [1, 2, 3]
let set2: Set = [3, 4, 5]
let unionSet = set1.union(set2)

//we can not add one tuple to other with "+" operator
let tuple1 = (1, 2)
let tuple2 = (3, 4)
let result = (tuple1.0 + tuple2.0, tuple1.1 + tuple2.1)



print(firstScore != secondScore)
print(firstScore >= secondScore)
print("Taylor" <= "Swift") //each of these also work with strings, because strings have a natural alphabetical order


//someDate < someOtherDate // for date variable type

enum Sizes: Comparable {
    case small
    case medium
    case large
}//comparing enums
let first = Sizes.small
let second = Sizes.large
print(first < second) //return true because small comes before large

//--conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//--combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

//ternary operator

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
// is equal to:
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//--switch cases
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough// for continue to next case
default:
    print("Enjoy your day!")
}


//ranges
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")//This default case is not needed if you already cover all other cases, such as with an enum.
}
