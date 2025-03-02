//
//  ComplexDataTypes.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 3.03.2025.
//


/*
Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
Arrays store items in the order you add them, and you access them using numerical positions.
Sets store items without any order, so you can’t access them using numerical positions.
Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
Dictionaries store items according to a key, and you can read items using those keys.
Enums are a way of grouping related values so you can use them without spelling mistakes.
You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.

*/

//--ARRAYS---
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
var cities: [String] = ["London", "Paris", "New York"]

/*
--SETS---
Items aren’t stored in any order; they are stored in what is
effectively a random order.
No item can appear twice in a set; all items must be unique.
You can create sets directly from arrays, like this:
*/

let colors = Set(["red", "green", "blue"])

/*
let earthquakeStrengths = Set(1, 1, 2, 2) //that's not correct. To
create a set you must pass in an array of items rather than just
loose integers – Set([1, 1, 2, 2]) would have been correct.
*/

/*
--TUPLES---
1.You can’t add or remove items from a tuple; they are fixed in size.
2.You can’t change the type of items in a tuple; they always have the
same types they were created with.
3.You can access items in a tuple using numerical positions or by
naming them, but Swift won’t let you read numbers or names that don’t
exist.
*/

var person = (first: "Taylor", last: "Swift",age:45)  // it can store different type of variables

print(person.0) //You then access items using numerical positions starting from 0
print(person.first)  // you can access items using their names
print(person.age)
/*
Remember, you can change the values inside a tuple after you create
it, but not the types of values. So, if you tried to change name to
be (first: "Justin", age: 25) you would get an error.
*/

//tuples can be constants

/*
--DICTIONARY---
Dictionaries are collections of values just like arrays, but rather
than storing things with an integer position you can access them
using anything you want.
*/

let heights : [String : Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
print(heights["Taylor Swift"])


// Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

print(favoriteIceCream["Paul"])
/*
favoriteIceCream["Charlotte"] //nil value no error
*/

/*
We can fix this by giving the dictionary a default value of “Unknown
, so that when no ice cream is found for Charlotte we get back
“Unknown” rather than nil:
*/

print (favoriteIceCream["Charlotte", default: "Unknown"])

let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]// This code is valid Swift.

// we can not access key via indexes


//--CREATING EMPTY COLLECTIONS--
var teams = [String: String]()//empty dictionary
teams["Paul"] = "Red"


var results = [Int]() // empty array

var words = Set<String>()//empty set
var scores = Dictionary<String, Int>()//empty dictionary
var results2 = Array<Int>()// empty array


//--ENUMS--
enum Result {
    case success
    case failure
}

let result4 = Result.failure
print(result4)



enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

///


enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}


let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
} // now earth is 3rd
