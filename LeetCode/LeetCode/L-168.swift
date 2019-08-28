//
//  L-168.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/28.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
/*
Given a positive integer, return its corresponding column title as appear in an Excel sheet.

For example:

1 -> A
2 -> B
3 -> C
...
26 -> Z
27 -> AA
28 -> AB
...
 
Example 1:

Input: 1
Output: "A"
 
Example 2:

Input: 28
Output: "AB"
 
Example 3:

Input: 701
Output: "ZY"
*/

// 减一法
/*
func convertToTitle(_ n: Int) -> String {
    let numberToChar: [Int: String] = [1 : "A", 2 : "B", 3 : "C",
                                       4 : "D", 5 : "E", 6 : "F",
                                       7 : "G", 8 : "H", 9 : "I",
                                       10: "J", 11: "K", 12: "L",
                                       13: "M", 14: "N", 15: "O",
                                       16: "P", 17: "Q", 18: "R",
                                       19: "S", 20: "T", 21: "U",
                                       22: "V", 23: "W", 24: "X",
                                       25: "Y", 26: "Z"]
    var number: Int = n
    var result: String = ""
    while number > 0 {
        number -= 1
        let index: Int = (number % 26) + 1
        result = (numberToChar[index] ?? "") + result
        if number < 26 { break }
        number = number / 26
    }
    return result
}
*/
