//
//  L-387.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/19.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

Examples:
s = "leetcode"
return 0.

s = "loveleetcode",
return 2.
 
Note: You may assume the string contain only lowercase letters.
*/

// 数组、字典
/*
func firstUniqChar(_ s: String) -> Int {
    var charCount: [Character: Int] = [:]
    var chars: [Character] = []
    for (_, item) in s.enumerated() {
        chars.append(item)
        charCount[item] = (charCount[item] ?? 0) + 1
    }
    
    for (index, item) in chars.enumerated() {
        if let count = charCount[item], count == 1 {
            return index
        }
    }
    return -1
}
*/
