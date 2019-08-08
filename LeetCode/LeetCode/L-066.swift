//
//  L-066.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/8.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

You may assume the integer does not contain any leading zero, except the number 0 itself.

Example 1:

Input: [1,2,3]
Output: [1,2,4]
Explanation: The array represents the integer 123.
 
 
Example 2:

Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
*/

// 数组反向加一
/*
func plusOne(_ digits: [Int]) -> [Int] {
    var result: [Int] = digits
    for index in (0..<result.count).reversed() {
        result[index] = (result[index] + 1) % 10
        if result[index] != 0 {
            return result
        }
    }
    
    result.insert(1, at: 0)
    return result
}
*/

// 倒转数组加一
/*
func plusOne(_ digits: [Int]) -> [Int] {
    let digitsRev: [Int] = digits.reversed()
    var plus: Int = 1
    var result: [Int] = [Int]()
    for value in digitsRev {
        result.append((plus + value) % 10)
        plus = (plus + value) / 10
    }
    if plus != 0 { result.append(plus) }
    return result.reversed()
}
*/

