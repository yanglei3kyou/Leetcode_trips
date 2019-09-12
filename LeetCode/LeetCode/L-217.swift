//
//  L-217.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/12.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array of integers, find if the array contains any duplicates.

Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

Example 1:

Input: [1,2,3,1]
Output: true
 
Example 2:

Input: [1,2,3,4]
Output: false
 
Example 3:

Input: [1,1,1,3,3,4,3,2,4,2]
Output: true
*/

// 集合(内部不会存在相同元素)
/*
func containsDuplicate(_ nums: [Int]) -> Bool {
    return Set(nums).count != nums.count
}
*/

// 字段存储
/*
func containsDuplicate(_ nums: [Int]) -> Bool {
    var numsMap: [Int: Bool] = [Int: Bool]()
    for num in nums {
        if let result = numsMap[num], result == true {
            return true
        } else {
            numsMap[num] = true
        }
    }
    return false
}
*/

// 数组排序，判断是否有重复
/*
func containsDuplicate(_ nums: [Int]) -> Bool {
    let sortNums: [Int] = nums.sorted()
    for (index, num) in sortNums.enumerated() {
        if index + 1 < sortNums.count, num == sortNums[index+1] {
            return true
        }
    }
    return false
}
*/
