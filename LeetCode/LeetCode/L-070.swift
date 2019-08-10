//
//  L-070.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/10.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
/*
You are climbing a stair case. It takes n steps to reach to the top.

Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

Note: Given n will be a positive integer.

Example 1:

Input: 2
Output: 2
Explanation: There are two ways to climb to the top.
1. 1 step + 1 step
2. 2 steps
 
Example 2:

Input: 3
Output: 3
Explanation: There are three ways to climb to the top.
1. 1 step + 1 step + 1 step
2. 1 step + 2 steps
3. 2 steps + 1 step
 
*/


// 斐波那契数
/*
func climbStairs(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    var first: Int = 1
    guard n > 1 else { return first }
    var second: Int = 2
    guard n > 2 else { return second }
    
    for _ in 3...n {
        let third = second + first
        first = second
        second = third
    }
    return second
}
*/

// 动态规划
/*
 func climbStairs(_ n: Int) -> Int {
 guard n > 0 else { return 0 }
 
 var memo: [Int] = [Int](repeating: 0, count: n+2)
 memo[1] = 1
 memo[2] = 2
 
 if n > 2 {
 for i in 3...n {
 memo[i] = memo[i - 1] + memo[i - 2]
 }
 }
 return memo[n]
 }
 */

// 记忆化递归法
/*
func climbStairs(_ n: Int) -> Int {
    var memo: [Int] = [Int](repeating: 0, count: n+1)
    return climb_Stairs(0, n: n, memo: &memo)
}

func climb_Stairs(_ i: Int, n: Int, memo: inout [Int]) -> Int {
    guard i <= n else { return 0 }
    if i == n { return 1 }
    if memo[i] > 0 { return memo[i] }
    memo[i] = climb_Stairs(i + 1, n: n, memo: &memo) + climb_Stairs(i + 2, n: n, memo: &memo)
    return memo[i]
}
*/

// 暴力解法
/*
func climbStairs(_ n: Int) -> Int {
    return climb_Stairs(0, n: n)
}

func climb_Stairs(_ i: Int, n: Int) -> Int {
    guard i <= n else { return 0 }
    if i == n { return 1 }
    return climb_Stairs(i + 1, n: n) + climb_Stairs(i + 2, n: n)
}
*/
