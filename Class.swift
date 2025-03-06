//
//  Class.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 6.03.2025.
//

//--CLASSES
/*
Classes do not come with synthesized memberwise initializers.
One class can be built upon (“inherit from”) another class, gaining its properties and methods.
Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

//--inheritance
//inheritance is not possible with structs, only classes.
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle(name: "Poppy")
poppy2.makeNoise()


//--final keyword
final class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
} //we cannot inherit a class defined with the final keyword.




//--copying object
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)//both singer and singerCopy point to the same object in memory, so when we print the singer name again we’ll see “Justin Bieber”


//if Singer were a struct then we would get “Taylor Swift” printed a second time
struct Singer2 {
    var name = "Taylor Swift"
}
var singer2 = Singer2()
print(singer2.name)

var singerCopy2 = singer2
singerCopy2.name = "Justin Bieber"
print(singer2.name)


//--deinitializer
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
    print("\(name) is no more!")
}
}


for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//--no mutating keyword in the classes
class Singer3 {
    var name = "Taylor Swift"
    func changeName(){
        name = "Justin Bieber"//no mutating keyword
    }
}

let taylor = Singer3()
taylor.name = "Ed Sheeran"
print(taylor.name) // outout: Ed Sheeran
taylor.changeName()




