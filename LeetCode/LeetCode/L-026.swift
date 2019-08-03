//
//  L-026.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/3.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

Example 1:

Given nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.

It doesn't matter what you leave beyond the returned length.
 
*/


// 双指针法
/*
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    
    var slow: Int = 0
    
    for fast in 1..<nums.count {
        if nums[slow] != nums[fast] {
            slow += 1
            nums[slow] = nums[fast]
        }
    }
    return slow + 1
}
*/

// 普通思考
/*
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    
    var arr: [Int] = [Int]()
    var pre: Int = nums[0]
    arr.append(pre)
    for index in 1..<nums.count {
        if nums[index] == pre {
            continue
        } else {
            pre = nums[index]
            arr.append(pre)
        }
    }
    nums = arr
    return nums.count
}
*/
