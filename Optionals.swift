//
//  Optionals.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 9.03.2025.
//
//--OPTIONALS
/*You can make optionals out of any type. An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.
*/
var age: Int? = nil //empty value
age = 38


//--unwraping optionals
var name: String? = nil
//If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}


/*
let tableHeight: Double? = 100
if tableHeight > 85.0 {
    print("The table is too high.")
} //That's not correct. This attempts to compare an optional Double against 85, which is not possible.
*/


//--Unwrapping with Guard
/*
1.It lets us focus on the “happy path” – the behavior of our function when everything has gone to plan, which is to print the meaning of life.
2.guard requires that we exit the current scope when it’s used, which in this case means we must return from the function if it fails. This is not optional: Swift won’t compile our code without the return.
*/
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}


//--force unwrapping
let str = "5"
let num = Int(str)
//That makes num an optional Int because you might have tried to convert a string like “Fish” rather than “5”.
//Even though Swift isn’t sure the conversion will work, you can see the code is safe so you can force unwrap the result by writing ! after Int(str), like this
let num2 = Int(str)!




//let url = URL(string: "https://www.apple.com")!
//That is a hand-typed URL and I have verified that it’s correct, I’m happy to force unwrap it. This cannot go wrong at runtime, and there is no scope for surprises. Compare that to using string interpolation:
/*
let url = URL(string: "https://www.\(website)")!
//That isn’t safe, and can’t be verified, and if given a malformed web address could crash.
*/

//--
/*
Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.
Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.

*/


//--nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous" //if it has nil inside then “Anonymous” will be used instead.


/*
let userID: Int? = 556
let id = userID ?? "Unknown"
//This attempts to use nil coalescing across different types, which isn't allowed.
*/


//--optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased() //That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.



//--optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//NOTE: Throwing functions can throw multiple errors using tuples.
//No,We must throw exactly one error at a time.



do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
//using "?"
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

//using "!"
try! checkPassword("sekrit")
print("OK!")
//If you use try! and your call throws an error, your code crashes.



//--failable initializers
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
let p = Person(id: "105854038")




//--typeCasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}


let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

