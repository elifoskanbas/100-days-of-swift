//
//  Loops.swift
//  First steps in Swift
//
//  Created by elif oskanbaş on 3.03.2025.
//


//--FOR LOOP
let count = 1...10
print(type(of: count)) //ClosedRange<Int>
for number in count {
    print("Number is \(number)")
}

//we can do the same with arrays:
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}


for _ in 1...5 {
    print("play")
}//If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values

/*
for beatle in "John", "Paul", "Ringo" {
    print("\(beatle) was in the Beatles")
}
//Oops – that's not correct. This is invalid Swift – those names need to be in an array in order for this to work.
*/


//--WHILE LOOP
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//-REPEAT WHILE LOOP == DO WHILE LOOP

repeat {
    print(number)
    number += 1
} while number <= 20


let nums = [1, 2, 3, 4, 5]
let random = nums.shuffled()


//exiting loop
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}


//exiting multiple loop
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

//skiping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}
