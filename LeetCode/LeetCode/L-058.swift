//
//  L-058.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/8.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

If the last word does not exist, return 0.

Note: A word is defined as a character sequence consists of non-space characters only.

Example:

Input: "Hello World"
Output: 5
*/


// 尾部遍历
/*
func lengthOfLastWord(_ s: String) -> Int {
    guard s.isEmpty == false else { return 0 }
    var length: Int = 0
    for char in s.reversed() {
        if char == " " {
            if length != 0 { break } else { continue }
        }
        length += 1
    }
    return length
}
*/
