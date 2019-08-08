//
//  L-067.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/8.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two binary strings, return their sum (also a binary string).

The input strings are both non-empty and contains only characters 1 or 0.

Example 1:

Input: a = "11", b = "1"
Output: "100"
 
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"
*/

// 补零
/*
func addBinary(_ a: String, _ b: String) -> String {
    var aRevChars:[Character] = a.reversed()
    var bRevChars:[Character] = b.reversed()
    
    var result: String = ""
    var plus: Int = 0
    for i in 0..<max(aRevChars.count, bRevChars.count) {
        let aValue: Int = (i < aRevChars.count) ? (Int("\(aRevChars[i])") ?? 0) : 0
        let bValue: Int = (i < bRevChars.count) ? (Int("\(bRevChars[i])") ?? 0) : 0
        let value: Int = aValue + bValue + plus
        result = "\(value % 2)" + result
        plus = value / 2
    }
    
    if plus != 0 {
        result = "\(plus)" + result
    }
    
    return result
}
*/

// 长短链条
/*
func addBinary(_ a: String, _ b: String) -> String {
    var aRevChars:[Character] = a.reversed()
    var bRevChars:[Character] = b.reversed()
    var plus: Int = 0
    
    var result: String = ""
    
    let minLength: Int = min(aRevChars.count, bRevChars.count)
    
    for i in 0..<minLength {
        let value: Int = (Int("\(aRevChars[i])") ?? 0) + (Int("\(bRevChars[i])") ?? 0) + plus
        result = "\(value % 2)" + result
        plus = value / 2
    }
    
    if aRevChars.count > minLength {
        for i in minLength..<aRevChars.count {
            let value: Int = (Int("\(aRevChars[i])") ?? 0) + plus
            result = "\(value % 2)" + result
            plus = value / 2
        }
    }
    
    if bRevChars.count > minLength {
        for i in minLength..<bRevChars.count {
            let value: Int = (Int("\(bRevChars[i])") ?? 0) + plus
            result = "\(value % 2)" + result
            
            plus = value / 2
        }
    }
    
    if plus != 0 {
        result = "\(plus)" + result
    }
    
    return result
}
*/
