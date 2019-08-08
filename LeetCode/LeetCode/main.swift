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


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}



class Solution {
    
    func lengthOfLastWord(_ s: String) -> Int {
        guard s.isEmpty == false else { return 0 }
        var length: Int = 0
        for char in s.reversed() {
            if char == " " {
                if length != 0 { break } else { continue }
            }
            length += 1
        }
        return length
    }
    
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var result: Int = nums.first!
        var sum: Int = 0
        for num in nums {
            if sum >= 0 {
                sum += num
            } else {
                sum = num
            }
            
            result = max(result, sum)
        }
        return result
    }
    
    func maxSubArray1(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var maxValue: Int = nums.first!
        for outsideI in 0..<nums.count {
            var sum: Int = 0
            for insideI in outsideI..<nums.count {
                sum += nums[insideI]
                maxValue = max(maxValue, sum)
            }
        }
        return maxValue
    }
}

var solutionFunc = Solution.init()

let a = ListNode(1)
let b = ListNode(2)
let c = ListNode(4)
let d = ListNode(1)
let e = ListNode(3)
let f = ListNode(4)

a.next = b
b.next = c

d.next = e
e.next = f

var arr = [3,2,2,3]
var result = solutionFunc.lengthOfLastWord("hello world")
print(result)
