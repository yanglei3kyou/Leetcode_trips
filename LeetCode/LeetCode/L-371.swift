//
//  L-371.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/16.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.

Example 1:
Input: a = 1, b = 2
Output: 3
 
Example 2:
Input: a = -2, b = 3
Output: 1
*/

// 位运算
/*
func getSum(_ a: Int, _ b: Int) -> Int {
    var sum: Int = a
    var other: Int = b
    var carry: Int = 0
    while other != 0 {
        carry = (sum & other) << 1
        sum = sum ^ other
        other = carry
    }
    return sum
}
*/
