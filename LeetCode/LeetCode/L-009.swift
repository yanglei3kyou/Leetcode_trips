//
//  L-009.swift
//  LeetCode
//
//  Created by yanglei on 2019/7/29.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

Example 1:

Input: 121
Output: true
Example 2:

Input: -121
Output: false
Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.

Example 3:

Input: 10
Output: false
Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 */

/*
    翻转一半数字进行比较
 */

/*
func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0, ( x == 0 || x % 10 != 0) else { return false }
    var result: Int = 0
    var xTmp = x
    
    while xTmp > result {
        result = result * 10 + xTmp % 10
        xTmp /= 10
    }
    return result == xTmp || result / 10 == xTmp
}
*/
