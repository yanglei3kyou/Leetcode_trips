//
//  L-013.swift
//  LeetCode
//
//  Created by yanglei on 2019/7/30.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
/*
Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.

Example 5:

Input: "MCMXCIV"
Output: 1994
Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.
*/

/*
    字典映射
 */

// Method 1 官方映射
/*
func romanToInt(_ s: String) -> Int {
    let romanCharToIntDictionary: [String: Int] = ["I": 1,
                                                   "IV": 4,
                                                   "V": 5,
                                                   "IX": 9,
                                                   "X": 10,
                                                   "XL": 40,
                                                   "L": 50,
                                                   "XC": 90,
                                                   "C": 100,
                                                   "CD": 400,
                                                   "D": 500,
                                                   "CM": 900,
                                                   "M": 1000]
    var result: Int = 0
    var index = 0
    let length = s.count
    while index < length {
        if (index + 1 < length), let value: Int = romanCharToIntDictionary[s.substring(with: Range(NSRange(location: index, length: 2), in: s)!)] {
            result += value
            index += 2
        } else {
            result += romanCharToIntDictionary[s.substring(with: Range(NSRange(location: index, length: 1), in: s)!)] ?? 0
            index += 1
        }
    }
    return result
}
*/

// Method 2
/*
class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanCharToIntDictionary: [Character : Int] = ["I": 1,
                                                           "V": 5,
                                                           "X": 10,
                                                           "L": 50,
                                                           "C": 100,
                                                           "D": 500,
                                                           "M": 1000]
        var result = 0
        var lackInfo: (isLack: Bool, lackValue: Int) = (false, 0)
        for (n, x) in s.enumerated() {
            if lackInfo.isLack {
                result += ((romanCharToIntDictionary[x] ?? 0) + lackInfo.lackValue)
                lackInfo = (false, 0)
                continue
            } else {
                if n == s.count - 1 {
                    result += (romanCharToIntDictionary[x] ?? 0)
                } else {
                    lackInfo = romanLack(x, right: s[s.index(s.startIndex, offsetBy: n+1)])
                    if lackInfo.isLack { continue }
                    result += (romanCharToIntDictionary[x] ?? 0)
                }
            }
        }
        return result
    }
    
    func romanLack(_ left: Character, right: Character) -> (isLack: Bool, lackValue: Int) {
        if left == "I" && (right == "V" || right == "X") {
            return (true, -1)
        } else if left == "X" && (right == "L" || right == "C") {
            return (true, -10)
        } else if left == "C" && (right == "D" || right == "M") {
            return (true, -100)
        } else {
            return (false, 0)
        }
    }
}
*/
