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
    func isValid(_ s: String) -> Bool {
        let map: [Character : Character] = [")": "(",
                                            "}": "{",
                                            "]":"["]
        var arr: [Character] = [Character]()
        for (_, x) in s.enumerated() {
            if let c = map[x] {
                if arr.last != c {
                    return false
                } else {
                    arr.removeLast()
                }
            } else {
                arr.append(x)
            }
        }
        return arr.count == 0
    }
}

var solutionFunc = Solution.init()
var result = solutionFunc.isValid("{[]}")
print(result)
