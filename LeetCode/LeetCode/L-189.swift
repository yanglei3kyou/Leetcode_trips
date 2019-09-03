//
//  L-189.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/3.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array, rotate the array to the right by k steps, where k is non-negative.

Example 1:

Input: [1,2,3,4,5,6,7] and k = 3
Output: [5,6,7,1,2,3,4]
Explanation:
rotate 1 steps to the right: [7,1,2,3,4,5,6]
rotate 2 steps to the right: [6,7,1,2,3,4,5]
rotate 3 steps to the right: [5,6,7,1,2,3,4]
 
Example 2:

Input: [-1,-100,3,99] and k = 2
Output: [3,99,-1,-100]
Explanation:
rotate 1 steps to the right: [99,-1,-100,3]
rotate 2 steps to the right: [3,99,-1,-100]
Note:

Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
Could you do it in-place with O(1) extra space?
*/

// 索引计算
/*
func rotate(_ nums: inout [Int], _ k: Int) {
    guard nums.count > 0 else { return }
    let offset: Int = k % nums.count
    var squeue: [Int] = []
    let count: Int = nums.count
    for i in 0..<count {
        let index: Int = (count - offset + i) % count
        squeue.append(nums[index])
    }
    nums.removeAll()
    nums.append(contentsOf: squeue)
}
*/
