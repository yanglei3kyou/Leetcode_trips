//
//  L-268.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/26.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

Example 1:

Input: [3,0,1]
Output: 2
 
Example 2:

Input: [9,6,4,2,3,5,7,0,1]
Output: 8
 
Note:
Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?
*/

// 数学方法(高斯公式 n*(n+1)/2)
/*
func missingNumber(_ nums: [Int]) -> Int {
    var sum: Int = (nums.count + 1) * nums.count / 2
    for num in nums { sum -= num }
    return sum
}
*/

// 位运算异或
/*
func missingNumber(_ nums: [Int]) -> Int {
    var result: Int = nums.count
    for (index, num) in nums.enumerated() {
        result ^= index
        result ^= num
    }
    return result
}
*/
