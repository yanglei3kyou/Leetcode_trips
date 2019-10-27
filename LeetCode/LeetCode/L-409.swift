//
//  L-409.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/27.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:
Assume the length of given string will not exceed 1,010.

Example:
Input:
"abccccdd"

Output:
7

Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.
*/

// 字典记录
/*
func longestPalindrome(_ s: String) -> Int {
    var charMap: [Character: Int] = [:]
    var count: Int = 0
    for (_, char) in s.enumerated() {
        charMap[char] = (charMap[char] ?? 0) + 1
    }
    var isSingle: Int = 0
    for value in charMap.values {
        count += value
        if value % 2 != 0 {
            isSingle = 1
            count -= 1
        }
    }
    return count + isSingle
}
*/

