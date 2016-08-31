//
//  main.swift
//  number-game
//
//  Created by Kishen Gandhi on 24/08/2016.
//  Copyright © 2016 Kishen Gandhi. All rights reserved.
//

import Foundation

let answer = randomIntBetween(0, high: 100) // function called in the helper file
var turn = 1 // turn as a variable

while (true) { // while loop to allow rounds
    print("Guess # \(turn): Please enter a number between 1 and 100...")
    
    let userInput = input()
    
    if let guess = Int(userInput) {
        if (guess > answer){
            print("Too high! Lower.")
        } else if (guess < answer) {
            print("Too low! Higher")
        } else {
            print("Correct!")
            break // ending the loop
        }
    } else {
        print("Invalid Input") // if invalid input
        continue // continue loop
    }
    turn = turn + 1 //incrementing number of turns
}

print("It took \(turn) attempts")

debugPrint("It took \(turn) attempts")

NSLog("Program succesfully completed")