//
//  L-283.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/28.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Example:

Input: [0,1,0,3,12]
Output: [1,3,12,0,0]
 
Note:

You must do this in-place without making a copy of the array.
Minimize the total number of operations.
*/

// 移动非零数字(后续填零)
/*
func moveZeroes(_ nums: inout [Int]) {
    var index: Int = 0
    for num in nums {
        if num != 0 {
            nums[index] = num
            index += 1
        }
    }
    
    for i in index..<nums.count { nums[i] = 0 }
}
*/

// 数组筛选(后续补零)
/*
func moveZeroes(_ nums: inout [Int]) {
    let totalCount: Int = nums.count
    nums = nums.filter{ $0 != 0 }
    let notZeroCount: Int = nums.count
    for _ in 0..<(totalCount - notZeroCount) {
        nums.append(0)
    }
}
*/

// 遍历交换
/*
func moveZeroes(_ nums: inout [Int]) {
    var lastNotZeroFoundAt: Int = 0
    for (index, item) in nums.enumerated() {
        if item != 0 {
            let tmp = nums[lastNotZeroFoundAt]
            nums[lastNotZeroFoundAt] = item
            nums[index] = tmp
            lastNotZeroFoundAt += 1
        }
    }
}
*/
