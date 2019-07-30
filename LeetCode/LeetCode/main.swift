//
//  main.swift
//  LeetCode
//
//  Created by yanglei on 2016/9/25.
//  Copyright © 2016年 Lyren. All rights reserved.
//

import Foundation

/*
 nums1 = [1, 3]
 nums2 = [2]
 
 The median is 2.0
 
 */

class Solution {
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
    
    func romanToIntDD(_ s: String) -> Int {
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
    
    
    
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0, ( x == 0 || x % 10 != 0) else { return false }
        var result: Int = 0
        var xTmp = x
        
        while xTmp > result {
            result = result * 10 + xTmp % 10
            xTmp /= 10
        }
        return result == xTmp || result / 10 == xTmp
    }
    
    func reverse(_ x: Int) -> Int {
        var result: Int = 0
        var xTmp = abs(x)
        let int32Max: Int = Int(Int32.max)
        let int32Min: Int = Int(Int32.min)

        while xTmp > 0 {
            result = result * 10 + xTmp % 10
            if result > int32Max || result < int32Min { return 0 }
            xTmp /= 10
        }
        
        return x > 0 ? result : -result
    }
}

var solutionFunc = Solution.init()
var result = solutionFunc.romanToInt("MCMXCIV")
print(result)
