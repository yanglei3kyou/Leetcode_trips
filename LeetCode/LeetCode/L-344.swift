//
//  L-344.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/9.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Write a function that reverses a string. The input string is given as an array of characters char[].

Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

You may assume all the characters consist of printable ascii characters.

Example 1:
Input: ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]
 
Example 2:
Input: ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]
 
*/

// 双指针
/*
func reverseString(_ s: inout [Character]) {
    var left : Int = 0
    var right: Int = s.count - 1
    var tmp: Character
    
    while left < right {
        tmp = s[left]
        s[left] = s[right]
        s[right] = tmp
        left += 1
        right -= 1
    }
}
*/

// 单指针
/*
func reverseString(_ s: inout [Character]) {
    guard s.count > 0 else { return }
    let count: Int = s.count
    var tmp: Character = s.first!
    for index in 0..<(count >> 1) {
        tmp = s[index]
        s[index] = s[count - index - 1]
        s[count - index - 1] = tmp
    }
}
*/
