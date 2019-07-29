//
//  L-007.swift
//  LeetCode
//
//  Created by yanglei on 2019/7/29.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
/*
    Given a 32-bit signed integer, reverse digits of an integer.
 
    Example 1:
 
    Input: 123
    Output: 321
 
    Note:
    Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */

/*
    弹出和推入数字 & 溢出前进行检查
 */

/*
class Solution {
    func reverse(_ x: Int) -> Int {
        var result: Int = 0
        var xTmp = abs(x)
        let int32Max: Int = Int(Int32.max)
        let int32Min: Int = Int(Int32.min)
        
        while xTmp > 0 {
            result = result * 10 + xTmp % 10
            if result > int32Max || result < int32Min { return 0 }
            xTmp /= 10
        }
        
        return x > 0 ? result : -result
    }
}
*/
