//
//  L-345.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/10.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:
Input: "hello"
Output: "holle"
 
Example 2:
Input: "leetcode"
Output: "leotcede"
 
Note:
The vowels does not include the letter "y".
*/

// 双指针
/*
func reverseVowels(_ s: String) -> String {
    var chars: [Character] = []
    var vowelIndex: [Int] = []
    for (index, item) in s.enumerated() {
        chars.append(item)
        if item == "a" || item == "e" || item == "i" || item == "o" || item == "u" ||
            item == "A" || item == "E" || item == "I" || item == "O" || item == "U" {
            vowelIndex.append(index)
        }
    }
    
    var left : Int = 0
    var right: Int = vowelIndex.count - 1
    var tmp: Character
    
    while left < right {
        tmp = chars[vowelIndex[left]]
        chars[vowelIndex[left]] = chars[vowelIndex[right]]
        chars[vowelIndex[right]] = tmp
        
        left  += 1
        right -= 1
    }
    
    return String(chars)
}
*/
