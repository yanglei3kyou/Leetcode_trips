//
//  L-299.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/1.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
You are playing the following Bulls and Cows game with your friend: You write down a number and ask your friend to guess what the number is. Each time your friend makes a guess, you provide a hint that indicates how many digits in said guess match your secret number exactly in both digit and position (called "bulls") and how many digits match the secret number but locate in the wrong position (called "cows"). Your friend will use successive guesses and hints to eventually derive the secret number.

Write a function to return a hint according to the secret number and friend's guess, use A to indicate the bulls and B to indicate the cows.

Please note that both secret number and friend's guess may contain duplicate digits.

Example 1:

Input: secret = "1807", guess = "7810"

Output: "1A3B"

Explanation: 1 bull and 3 cows. The bull is 8, the cows are 0, 1 and 7.
 
Example 2:

Input: secret = "1123", guess = "0111"

Output: "1A1B"

Explanation: The 1st 1 in friend's guess is a bull, the 2nd or 3rd 1 is a cow.
Note: You may assume that the secret number and your friend's guess only contain digits, and their lengths are always equal.
*/

// 常规遍历
/*
func getHint(_ secret: String, _ guess: String) -> String {
    var secret = secret
    var guess = guess
    
    var aCount: Int = 0
    var charArray: [Character] = []
    var waitCompareArray: [Character] = []
    
    while let aChar = secret.first, let bChar = guess.first{
        if aChar == bChar {
            aCount += 1
        } else {
            charArray.append(aChar)
            waitCompareArray.append(bChar)
        }
        secret.removeFirst()
        guess.removeFirst()
    }
    
    
    var bCount: Int = 0
    while let compareChar = waitCompareArray.first {
        if let index = charArray.firstIndex(of: compareChar) {
            bCount += 1
            charArray.remove(at: index)
        }
        waitCompareArray.removeFirst()
    }
    return "\(aCount)A\(bCount)B"
}
*/
