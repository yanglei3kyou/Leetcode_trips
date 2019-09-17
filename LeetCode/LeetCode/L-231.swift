//
//  L-231.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/17.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an integer, write a function to determine if it is a power of two.

Example 1:

Input: 1
Output: true
Explanation: 20 = 1
 
Example 2:

Input: 16
Output: true
Explanation: 24 = 16
 
Example 3:

Input: 218
Output: false
*/

// 位运算( 2的x幂  n & n -1  ==  0)
/*
func isPowerOfTwo(_ n: Int) -> Bool {
    return n > 0 && (n & (n - 1) == 0)
}
*/

// 位移动
/*
func isPowerOfTwo(_ n: Int) -> Bool {
    guard n > 0 else { return false }
    var num: Int = n
    var oneCount: Int = 0
    while num != 0 {
        if num & 1 != 0 { oneCount += 1 }
        num = num >> 1
    }
    return oneCount == 1
}
*/
