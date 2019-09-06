//
//  L-198.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/6.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
You are a professional robber planning to rob houses along a street. Each house has a certain amount of money stashed, the only constraint stopping you from robbing each of them is that adjacent houses have security system connected and it will automatically contact the police if two adjacent houses were broken into on the same night.

Given a list of non-negative integers representing the amount of money of each house, determine the maximum amount of money you can rob tonight without alerting the police.

Example 1:

Input: [1,2,3,1]
Output: 4
Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
Total amount you can rob = 1 + 3 = 4.
 
Example 2:

Input: [2,7,9,3,1]
Output: 12
Explanation: Rob house 1 (money = 2), rob house 3 (money = 9) and rob house 5 (money = 1).
Total amount you can rob = 2 + 9 + 1 = 12.
*/

// 动态规划
/*
func rob(_ nums: [Int]) -> Int {
    var prevMax: Int = 0
    var currMax: Int = 0
    for num in nums {
        let temp = currMax
        currMax = max(prevMax + num, currMax)
        prevMax = temp
    }
    return currMax
}
*/
