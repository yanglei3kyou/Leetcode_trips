//
//  L-035.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/5.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2
 
Example 2:

Input: [1,3,5,6], 2
Output: 1
 
Example 3:

Input: [1,3,5,6], 7
Output: 4
 
Example 4:

Input: [1,3,5,6], 0
Output: 0
*/


// 普通寻找
/*
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    for (index, item) in nums.enumerated() {
        if item >= target {
            return index
        }
    }
    return nums.count
}
*/
