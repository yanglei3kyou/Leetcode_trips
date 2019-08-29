//
//  L-169.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/29.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
// https://leetcode-cn.com/problems/majority-element/solution/qiu-zhong-shu-by-leetcode-2/

/*
Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

You may assume that the array is non-empty and the majority element always exist in the array.

Example 1:

Input: [3,2,3]
Output: 3
 
Example 2:

Input: [2,2,1,1,1,2,2]
Output: 2
*/


// 哈希表
/*
func majorityElement(_ nums: [Int]) -> Int {
    var elementCount: [Int: Int] = [:]
    for element in nums {
        let count = (elementCount[element] ?? 0) + 1
        if count > nums.count / 2 { return element }
        elementCount[element] = count
    }
    return 0
}
*/

// 排序 取中间数
/*
func majorityElement(_ nums: [Int]) -> Int {
    return nums.sorted { $0 < $1 }[nums.count>>1]
}
*/
