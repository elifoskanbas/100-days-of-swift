//
//  FirstStepsInSwift.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 3.03.2025.
//


/*
1.You make variables using var and constants using let. It’s preferable to use constants as often as possible.
2.Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
3.Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
4.String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
5.Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.

*/

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

var age = 38 //Swift is what’s known as a type-safe language, which means that every variable must be of one specific type
//age = "38" // error

var population = 8_000_000 //it's an intiger



var multiLineStr = """
This goes
over multiple
lines
"""
/*prints "This goes
over multiple
lines"*/

print(multiLineStr)

var multiLineStr2 = """
This goes \
over multiple\
lines
"""
// we use "\" for cancel tabs
// prints "This goes over multiplelines"
print(multiLineStr2)



/*
var coleridge = """
Water, water, everywhere
and not a drop to drink"""  //error because final three quotes must be on a line by themselves.
*/

var pi = 3.141 // automatically double

var myInt = 1 // Int
var myDouble = 1.0 // Double

/*
var sum = myInt + myDouble// error "inary operator '+' cannot be applied to operands of type 'Int' and 'Double'"
*/


//String interpolation
var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(str)"





let taylor = "swift" //The let keyword creates constants, which are values that can be set once and never again


let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
var percentage: Double = 99
let taylorRocks: Bool = true

