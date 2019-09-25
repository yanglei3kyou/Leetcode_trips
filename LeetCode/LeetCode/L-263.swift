//
//  L-263.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/25.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Write a program to check whether a given number is an ugly number.

Ugly numbers are positive numbers whose prime factors only include 2, 3, 5.

Example 1:

Input: 6
Output: true
Explanation: 6 = 2 × 3
 
Example 2:

Input: 8
Output: true
Explanation: 8 = 2 × 2 × 2
 
Example 3:

Input: 14
Output: false
Explanation: 14 is not ugly since it includes another prime factor 7.
Note:

1 is typically treated as an ugly number.
Input is within the 32-bit signed integer range: [−231,  231 − 1].
*/

// 求其它的除数
/*
func isUgly(_ num: Int) -> Bool {
    guard num > 0 else { return false }
    var value: Int = num
    while value != 1 {
        if value % 2 == 0 { value /= 2; continue }
        else if value % 3 == 0 { value /= 3; continue }
        else if value % 5 == 0 { value /= 5; continue }
        return false
    }
    return true
}
*/
