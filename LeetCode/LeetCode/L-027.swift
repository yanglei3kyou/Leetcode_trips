//
//  L-027.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/4.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array nums and a value val, remove all instances of that value in-place and return the new length.

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

The order of elements can be changed. It doesn't matter what you leave beyond the new length.

Example 1:

Given nums = [3,2,2,3], val = 3,

Your function should return length = 2, with the first two elements of nums being 2.

It doesn't matter what you leave beyond the returned length.
*/


// 单指针交换
/*
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count != 0 else { return 0 }
    
    var length: Int = nums.count
    var index: Int = 0
    while index < length {
        if nums[index] == val {
            nums[index] = nums[length-1]
            length -= 1
        } else {
            index += 1
        }
    }
    
    return length
}
*/

// 双指针
/*
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    guard nums.count != 0 else { return 0 }
    
    var slow: Int = 0
    for fast in 0..<nums.count {
        if nums[fast] != val {
            nums[slow] = nums[fast]
            slow += 1
        }
    }
    
    if nums.first == val { nums.removeAll() }
    
    return slow
}
*/
