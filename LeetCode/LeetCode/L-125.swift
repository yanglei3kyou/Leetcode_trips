//
//  L-125.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/22.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

Example 1:

Input: "A man, a plan, a canal: Panama"
Output: true
 
Example 2:

Input: "race a car"
Output: false
*/

// 双指针
/*
func isPalindrome(_ s: String) -> Bool {
    guard s.count > 0 else { return true }
    let sChars: [Character] = s.lowercased().reversed().filter { ("a" <= $0 && $0 <= "z") || ("0" <= $0 && $0 <= "9") }
    var start: Int = 0
    var end: Int = sChars.count - 1
    while start <= end {
        if sChars[start] != sChars[end] {
            return false
        }
        start += 1
        end -= 1
    }
    return true
}
*/

// 数组取反比较
/*
func isPalindrome(_ s: String) -> Bool {
    guard s.count > 0 else { return true }
    let sChars: [Character] = s.lowercased().reversed().filter { ("a" <= $0 && $0 <= "z") || ("0" <= $0 && $0 <= "9") }
    return sChars.reversed() == sChars
}
*/
