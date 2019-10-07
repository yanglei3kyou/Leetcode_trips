//
//  L-303.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/7.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.

Example:
Given nums = [-2, 0, 3, -5, 2, -1]

sumRange(0, 2) -> 1
sumRange(2, 5) -> -1
sumRange(0, 5) -> -3
 
Note:
You may assume that the array does not change.
There are many calls to sumRange function.
*/

// 字典
/*
class NumArray {
    fileprivate var sumMap: [Int: Int] = [:]
    init(_ nums: [Int]) {
        for (index, num) in nums.enumerated() {
            sumMap[index + 1] = num + (sumMap[index] ?? 0)
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return (sumMap[j + 1] ?? 0) - (sumMap[i] ?? 0)
    }
}
*/

// 暴力法
/*
class NumArray {
    fileprivate var values: [Int] = []
    
    init(_ nums: [Int]) {
        values.removeAll()
        values.append(contentsOf: nums)
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        guard values.count > 0 else { return 0 }
        let left : Int = min(max(0, i), values.count - 1)
        let right: Int = min(max(0, j), values.count - 1)
        var sum: Int = 0
        for index in left...right {
            sum += values[index]
        }
        return sum
    }
}
*/
