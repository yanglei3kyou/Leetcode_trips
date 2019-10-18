//
//  L-383.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/18.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

Each letter in the magazine string can only be used once in your ransom note.

Note:
You may assume that both strings contain only lowercase letters.

canConstruct("a", "b") -> false
canConstruct("aa", "ab") -> false
canConstruct("aa", "aab") -> true
*/

// 字典保存
/*
func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    guard !ransomNote.isEmpty else { return true }
    var letterMap: [Character: Int] = [:]
    for (_, value) in magazine.enumerated() {
        letterMap[value] = (letterMap[value] ?? 0) + 1
    }
    for (_, value) in ransomNote.enumerated() {
        if let count = letterMap[value], count > 0 {
            letterMap[value] = count - 1
        } else {
            return false
        }
    }
    return true
}
*/
