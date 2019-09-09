//
//  L-204.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/9.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Count the number of prime numbers less than a non-negative number, n.

Example:

Input: 10
Output: 4
Explanation: There are 4 prime numbers less than 10, they are 2, 3, 5, 7.
*/

//https://leetcode-cn.com/problems/count-primes/solution/ji-shu-zhi-shu-bao-li-fa-ji-you-hua-shai-fa-ji-you/

// 优化
/*
func countPrimes(_ n: Int) -> Int {
    guard n > 2 else { return 0 }
    var count: Int = 1
    for i in 3..<n {
        if i & 1 == 0 { continue }
        var sign: Bool = true
        
        var j = 3
        while j * j <= i {
            if i % j == 0 {
                sign = false
                break
            }
            j += 2
        }
        if sign { count += 1 }
    }
    return count
}
*/

// 暴力法
/*
func countPrimes(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var count: Int = 0
    for i in 2..<n {
        var sign: Bool = true
        for j in 2..<i {
            if i % j == 0 {
                sign = false
                break
            }
        }
        if sign { count += 1 }
    }
    return count
}
*/
