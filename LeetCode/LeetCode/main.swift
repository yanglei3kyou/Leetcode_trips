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
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        var i: Int = 1
        var j: Int = 0
        
        var commonPrefix: String = strs.first ?? ""
        while i < strs.count {
            while j < commonPrefix.count && j < strs[i].count {
                if commonPrefix[commonPrefix.index(commonPrefix.startIndex, offsetBy: j)] !=
                                  strs[i][strs[i].index(strs[i].startIndex, offsetBy: j)] {
                    break
                }
                j += 1
            }
            
            commonPrefix = commonPrefix.substring(to: commonPrefix.index(commonPrefix.startIndex, offsetBy: j))
            
            if commonPrefix == "" { return "" }
            j = 0
            i += 1
        }
        return commonPrefix
    }
    
    
    
    func longestCommonPrefix2(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        var offset: Int = 0
        var i: Int = 1
        var j: Int = 0
        
        var commonPrefix: String = strs.first ?? ""
        while i < strs.count {
            while j <= commonPrefix.count && j <= strs[i].count {
                if commonPrefix.substring(to: commonPrefix.index(commonPrefix.startIndex, offsetBy: j)) !=
                    strs[i].substring(to: strs[i].index(strs[i].startIndex, offsetBy: j)) {
                    break
                } else {
                    offset = j
                }
                j += 1
            }
            
            commonPrefix = commonPrefix.substring(to: commonPrefix.index(commonPrefix.startIndex, offsetBy: offset))
            
            if commonPrefix == "" { return "" }
            j = 0
            i += 1
        }
        return commonPrefix
    }
    
    func longestCommonPrefix1(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
        
        var isSamePrefix: Bool = true
        
        let sortedArr: [String] = strs.sorted { $0.count <= $1.count }
        let shortString: String = sortedArr.first ?? ""
        var offset: Int = 1
        
        while offset <= shortString.count {
            let subStr = shortString.substring(to: shortString.index(shortString.startIndex, offsetBy: offset))
            
            for str in strs {
                if subStr != str.substring(to: str.index(str.startIndex, offsetBy: offset)) {
                    isSamePrefix = false
                    break
                }
            }
            
            if isSamePrefix == false { offset -= 1; break }
            
            offset += 1
        }
        
        if isSamePrefix { offset -= 1 }
        
        return offset <= shortString.count ? shortString.substring(to: shortString.index(shortString.startIndex, offsetBy: offset)) : ""
    }
}

var solutionFunc = Solution.init()
var result = solutionFunc.longestCommonPrefix(["c","c"])
print(result)
