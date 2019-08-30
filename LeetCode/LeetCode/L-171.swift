//
//  L-171.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/30.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

A -> 1
B -> 2
C -> 3
...
Z -> 26
AA -> 27
AB -> 28
...
 
Example 1:

Input: "A"
Output: 1
 
Example 2:

Input: "AB"
Output: 28
 
Example 3:

Input: "ZY"
Output: 701
*/

// 倒序乘法
/*
func titleToNumber(_ s: String) -> Int {
    let charToNumber: [String: Int] = ["A": 1 , "B": 2 , "C": 3 ,
                                       "D": 4 , "E": 5 , "F": 6 ,
                                       "G": 7 , "H": 8 , "I": 9 ,
                                       "J": 10, "K": 11, "L": 12,
                                       "M": 13, "N": 14, "O": 15,
                                       "P": 16, "Q": 17, "R": 18,
                                       "S": 19, "T": 20, "U": 21,
                                       "V": 22, "W": 23, "X": 24,
                                       "Y": 25, "Z": 26]
    
    var result: Int = 0
    var multiple: Int = 1
    for (_, item) in s.reversed().enumerated() {
        result = result + ((charToNumber["\(item)".uppercased()] ?? 0)*multiple)
        multiple *= 26
    }
    return result
}
*/
