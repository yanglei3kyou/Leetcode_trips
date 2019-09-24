//
//  L-258.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/24.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

Example:

Input: 38
Output: 2
Explanation: The process is like: 3 + 8 = 11, 1 + 1 = 2.
Since 2 has only one digit, return it.
Follow up:
Could you do it without any loop/recursion in O(1) runtime?
*/

// 数字逐位计算
/*
func addDigits(_ num: Int) -> Int {
    var result: Int = num
    var sum: Int = 0
    while result >= 10 {
        let lastNum: Int = result % 10
        result = result / 10
        sum += lastNum
        
        if result < 10 {
            result += sum
            sum = 0
        }
    }
    return result
}
*/
