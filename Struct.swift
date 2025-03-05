//
//  Struct.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 5.03.2025.
//


//--STRUCT

struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"



//Computed properties
struct Sports {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}


let chessBoxing = Sports(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


/*

struct Candle {
    var burnLength: Int
    var alreadyBurned = 0
    let burnRemaining: Int {
        return burnLength - alreadyBurned
    }
}
//not correct. Constants cannot be computed properties.
*/


//--property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }// take action after a property changes
    }
}

//You can also use willSet to take action before a property changes, but that is rarely used.
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


// You can't attach a property observer to a constant, because it will never change.



//methods in struct
struct Venue {
    var name: String
    var maximumCapacity: Int
    func makeBooking(for people: Int) {
        if people > maximumCapacity {
            print("Sorry, we can only accommodate \(maximumCapacity).")
        } else {
            print("\(name) is all yours!")
        }
    }
}//valid swift syntax



//--mutating
/*
The problem is that when you create the struct Swift has no idea whether you will use it with constants or variables, so by
default it takes the safe approach: Swift won’t let you write methods that change properties unless you specifically request
it.

When you want to change a property inside a method, you need to mark it using the mutating keyword
*/
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


struct Rectangle {
    var width: Int
    
    mutating func doubleWidth() {
        width *= 2
    }
}

//--properties and methods of strings

/*
In many other languages, strings aren’t structs – they are just a sequence of letters, and nothing more. Swift takes a
 different approach: strings are structs, and in fact come packed with functionality.

Almost all of Swift’s core types are implemented as structs, including strings, integers, arrays, dictionaries, and even
 Booleans. This isn’t an accident: structs are simple, fast, and efficient in Swift, which means we can create and destroy
 them as much as we need without worrying too much about performance.


*/
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())


var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)



//--initializer

struct Employee {
    var name: String
    var yearsActive = 0
}
//we can  declare it in two ways
let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

//var user = User(username: "twostraws") //passing parameters is invalid because we created an initializer
var user = User()
user.username = "twostraws"


//--self keyword
struct Person2 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}


/*
Using lazy properties can accidentally produce work where you don’t expect it. For example, if you’re building a game and
 access a complex lazy property for the first time it might cause your game to slow down, so it’s much better to do slow work
 up front and get it out of the way.
Lazy properties always store their result, which might either be unnecessary (because you aren’t going to use it again) or be
 pointless (because it needs to be recalculated frequently).
Because lazy properties change the underlying object they are attached to, you can’t use them on constant structs.
*/

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person3 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person3(name: "Ed")


//--static keyword

struct Student {
    static var classSize = 0 //it is belong to Student struct not to it's instance
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)



//--access control
struct Person4 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

var person4 = Person4(id:"1089")//it is valid
person4.identify()
//print(person4.id)//invalid



