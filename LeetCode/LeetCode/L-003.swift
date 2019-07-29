//
//  L-003.swift
//  LeetCode
//
//  Created by yanglei on 2019/7/2.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
 Given a string, find the length of the longest substring without repeating characters.
 
    Input: "abcabcbb"
    Output: 3
    Explanation: The answer is "abc", with the length of 3.
 */

/*
        移动窗口
 */

/*
 
 "abcabcbb"
 
 start 0  1 2 3 5 6
 
 
 a b c
 4 8 6
 
 */

/*
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dictionary: [Character: Int] = [Character: Int]()
        var start: Int = 0
        var len: Int = 0
        for (index, value) in s.enumerated() {
            if dictionary.keys.contains(value) {
                start = max(start, dictionary[value] ?? 0)
            }
            dictionary[value] = index + 1
            len = max(index - start + 1, len)
        }
        return len
    }
}
*/
