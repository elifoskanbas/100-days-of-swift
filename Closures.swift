//
//  Closures.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 4.03.2025.
//


//--CLOSURES

/*
Running some code after a delay.
Running some code after an animation has finished.
Running some code when a download has finished.
Running some code when a user has selected an option from your menu.

*/

let drive = {
    print("I'm driving in my car")
}
drive()

//accepting parameters in a closure
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
//closures cannot use external parameter labels.

//we don't use parameter names when calling a closure.
driving("London")

/*
func pay(user: String, amount: Int) {
    // code
}//parameters in func

let payment = { (user: String, amount: Int) in
    // code
}//parameters in closure
*/

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


let message = drivingWithReturn("London")
print(message)


//without parameter
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

//--closures as parameters
let driving2 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving2)
