//
//  L-172.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/30.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an integer n, return the number of trailing zeroes in n!.

Example 1:

Input: 3
Output: 0
Explanation: 3! = 6, no trailing zero.
 
Example 2:

Input: 5
Output: 1
Explanation: 5! = 120, one trailing zero.
Note: Your solution should be in logarithmic time complexity.
*/

// 递归
/*
func trailingZeroes(_ n: Int) -> Int {
    return n >= 5 ? (n/5) + trailingZeroes(n/5) : 0
}
*/

// 计算5的数量-超时
/*
func trailingZeroes(_ n: Int) -> Int {
    guard n != 0 else { return 1 }
    var result: Int = 0
    var mod5: Int = 0
    var d5: Int = 0
    for item in 1...n {
        mod5 = item % 5
        d5 = item / 5
        while mod5 == 0 {
            result += 1
            mod5 = d5 % 5
            d5 = d5 / 5
        }
    }
    return result
}
*/
