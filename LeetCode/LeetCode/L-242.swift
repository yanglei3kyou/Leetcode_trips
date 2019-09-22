//
//  L-242.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/22.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two strings s and t , write a function to determine if t is an anagram of s.

Example 1:

Input: s = "anagram", t = "nagaram"
Output: true
 
Example 2:

Input: s = "rat", t = "car"
Output: false
Note:
You may assume the string contains only lowercase alphabets.

Follow up:
What if the inputs contain unicode characters? How would you adapt your solution to such case?
*/

// 元素计数
/*
func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    var sInfos: [Character: Int] = [:]
    var tInfos: [Character: Int] = [:]
    for (_, item) in s.enumerated() { sInfos[item] = (sInfos[item] ?? 0) + 1 }
    for (_, item) in t.enumerated() { tInfos[item] = (tInfos[item] ?? 0) + 1 }
    for (_, item) in sInfos.enumerated() { if tInfos[item.key] != item.value { return false } }
    return true
}
*/

// 排序后再次比较
/*
func isAnagram(_ s: String, _ t: String) -> Bool {
    return s.sorted() == t.sorted()
}
*/
