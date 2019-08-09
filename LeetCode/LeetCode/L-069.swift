//
//  L-069.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/9.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Implement int sqrt(int x).

Compute and return the square root of x, where x is guaranteed to be a non-negative integer.

Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.

Example 1:

Input: 4
Output: 2
 
 
Example 2:

Input: 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since
the decimal part is truncated, 2 is returned.
*/

// 二分法
/*
func mySqrt(_ x: Int) -> Int {
    var left: Int = 0
    var right: Int = (x / 2) + 1
    
    while left < right {
        let mid: Int = (left + right + 1) >> 1
        let suare: Int = mid * mid
        if suare > x {
            right = mid - 1
        } else {
            left = mid
        }
    }
    return left
}
*/

// 暴力破解法
/*
func mySqrt(_ x: Int) -> Int {
    var result: Int = 0
    for index in 0...Int.max {
        if index * index == x {
            return index
        } else if index * index < x {
            result = index
        } else {
            return result
        }
    }
    return result
}
*/
