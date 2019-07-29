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
var result = solutionFunc.reverse(1534236469)
print(result)
