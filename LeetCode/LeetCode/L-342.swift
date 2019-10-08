//
//  L-342.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/8.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

Example 1:
Input: 16
Output: true
 
Example 2:
Input: 5
Output: false
 
Follow up: Could you solve it without loops/recursion?
*/

// 循环位处理
/*
func isPowerOfFour(_ num: Int) -> Bool {
    guard num > 0 else { return false }
    var n: Int = num
    while n & 3 == 0 { n = n >> 2 }
    return n == 1
}
*/

// 位运算
/*
func isPowerOfFour(_ num: Int) -> Bool {
    guard num > 0, num & (num - 1) == 0 else { return false }
    return (num & 0x55555555) != 0
}
*/
