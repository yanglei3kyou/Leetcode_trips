//
//  L-326.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/7.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/power-of-three/solution/3de-mi-by-leetcode/

/*
Given an integer, write a function to determine if it is a power of three.

Example 1:
Input: 27
Output: true
 
Example 2:
Input: 0
Output: false
 
Example 3:
Input: 9
Output: true
 
Example 4:
Input: 45
Output: false
 
Follow up:
Could you do it without using any loop / recursion?
*/

// 迭代
/*
func isPowerOfThree(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var num: Int = n
    while num % 3 == 0 { num /= 3 }
    return num == 1
}
*/

// 3取余
/*
func isPowerOfThree(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var num: Int = n
    while num != 0 {
        if num == 1 { return true }
        if num % 3 != 0 { return false }
        num /= 3
    }
    return true
}
*/
