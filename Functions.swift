//
//  Functions.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 4.03.2025.
//


//--FUNCTIONS--

func printHelp() {
    let message = """
Welcome to MyApp!
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
print(message)
}

printHelp()

//passing parameters
func square(number: Int) {
    print(number * number)
}

square(number: 8)

//passing array as parameter
func square(numbers: [Int]) {
    for number in numbers {
        let squared = number * number
        print("\(number) squared is \(squared).")
    }
}
square(numbers: [2, 3, 4])

//returning values
func squareReturn (number: Int) -> Int {
    return number * number
}

let result = squareReturn(number: 8)
print(result)


// return two or more values from a function
func getUser() -> (first: String, last: String) {  // use tuples
  return   (first: "Taylor", last: "Swift")
}
let user = getUser()
print(user.first)


//external parameters
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")


//omitting parameters
func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")


//default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
//we can call this func in two ways
greet("Taylor")
greet("Taylor", nicely: false)


//variadic functions
// let us accept any number of parameters of the same type, separated by a comma
//Variadic parameters are converted into arrays inside your function.
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

//--writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
/*
 -you can handle the errors inside the function (thus making it not a throwing function)
 -you can send them all back  to whatever called the function (called “error propagation” or sometimes “bubbling up errors”)
 -you can even handle some errors in the function and send some back.
 All of those are valid solutions, and you will use all of them at some point.
 */
 
 //--running throwing functions
 
 do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

/*
do {
    try throwingFunction1()
    nonThrowingFunction1() //can not throw error
    try throwingFunction2()
    nonThrowingFunction2() //can not throw error
    try throwingFunction3()
} catch {
    // handle errors
}
 
*/


//--inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum) //like C++ passed by reference



/*
//in c++ version
void doubleInPlace(int &number) {
    number *= 2;
}

int main() {
    int myNum = 10;
    doubleInPlace(myNum);
    cout << myNum << endl; // Çıktı: 20
    return 0;
}
*/


