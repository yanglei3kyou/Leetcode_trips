//
//  L-205.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/10.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two strings s and t, determine if they are isomorphic.

Two strings are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

Example 1:

Input: s = "egg", t = "add"
Output: true
 
Example 2:

Input: s = "foo", t = "bar"
Output: false
 
Example 3:

Input: s = "paper", t = "title"
Output: true
*/

// 字典存储
/*
func isIsomorphic(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }
    let sChars: [Character] = s.reversed().reversed()
    let tChars: [Character] = t.reversed().reversed()
    var stMap: [Character: Character] = [Character: Character]()
    for (index, item) in sChars.enumerated() {
        if let storeC = stMap[item] {
            if storeC == tChars[index] {
                continue
            } else {
                return false
            }
        } else {
            if stMap.values.contains(tChars[index]) {
                return false
            }
            stMap[item] = tChars[index]
        }
    }
    return true
}
*/
