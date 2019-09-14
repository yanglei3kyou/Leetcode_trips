//
//  L-219.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/14.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array of integers and an integer k, find out whether there are two distinct indices i and j in the array such that nums[i] = nums[j] and the absolute difference between i and j is at most k.

Example 1:

Input: nums = [1,2,3,1], k = 3
Output: true
 
Example 2:

Input: nums = [1,0,1,1], k = 1
Output: true
 
Example 3:

Input: nums = [1,2,3,1,2,3], k = 2
Output: false
*/

// 集合
/*
func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var valuesInK: Set<Int> = Set<Int>()
    for (index, value) in nums.enumerated() {
        if valuesInK.contains(value) { return true }
        valuesInK.insert(value)
        if valuesInK.count > k { valuesInK.remove(nums[index-k]) }
    }
    return false
}
*/

// 字典(记录序列号)
/*
func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
    var valueIndexMap: [Int: Int] = [:]
    for (index, value) in nums.enumerated() {
        if let preIndex = valueIndexMap[value], index - preIndex <= k {
            return true
        }
        valueIndexMap[value] = index
    }
    return false
}
*/
