//
//  L-202.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/7.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Write an algorithm to determine if a number is "happy".

A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

Example:

Input: 19
Output: true
 
Explanation:
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1
*/

// 快慢指针
/*
func bitSquareSum(_ n: Int) -> Int {
    var sum: Int = 0
    var num: Int = n
    while num > 0 {
        let bit: Int = num % 10
        sum += (bit * bit)
        num /= 10
    }
    return sum
}

func isHappy(_ n: Int) -> Bool {
    var slow: Int = n
    var fast: Int = bitSquareSum(n)
    while slow != fast {
        slow = bitSquareSum(slow)
        fast = bitSquareSum(fast)
        fast = bitSquareSum(fast)
    }
    return slow == 1
}
*/
