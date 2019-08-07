//
//  L-053.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/7.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

Example:

Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
 
Explanation: [4,-1,2,1] has the largest sum = 6.
Follow up:

If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
*/

// 动态规划
/*
func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    var result: Int = nums.first!
    var sum: Int = 0
    for num in nums {
        if sum >= 0 {
            sum += num
        } else {
            sum = num
        }
        
        result = max(result, sum)
    }
    return result
}
*/

// 暴力破解
/*
func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    var maxValue: Int = nums.first!
    for outsideI in 0..<nums.count {
        var sum: Int = 0
        for insideI in outsideI..<nums.count {
            sum += nums[insideI]
            maxValue = max(maxValue, sum)
        }
    }
    return maxValue
}
*/
