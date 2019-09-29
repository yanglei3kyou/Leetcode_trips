//
//  L-290.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/29.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a pattern and a string str, find if str follows the same pattern.

Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.

Example 1:

Input: pattern = "abba", str = "dog cat cat dog"
Output: true
 
Example 2:

Input:pattern = "abba", str = "dog cat cat fish"
Output: false
 
Example 3:

Input: pattern = "aaaa", str = "dog cat cat dog"
Output: false
 
Example 4:

Input: pattern = "abba", str = "dog dog dog dog"
Output: false
Notes:
You may assume pattern contains only lowercase letters, and str contains lowercase letters that may be separated by a single space.

Accepted
*/

// 字典匹配
/*
func wordPattern(_ pattern: String, _ str: String) -> Bool {
    let strArray = str.split(separator: " ")
    guard pattern.count == strArray.count else { return false }
    var mapRecord: [Character: Substring] = [:]
    for (index, item) in pattern.enumerated() {
        if let value = mapRecord[item] {
            if value != strArray[index] { return false }
        } else {
            let str = strArray[index]
            if mapRecord.values.contains(str) == false {
                mapRecord[item] = str
            } else {
                return false
            }
        }
    }
    return true
}
*/
