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
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil  else { return nil }
        var curNode: ListNode? = head
        while curNode != nil && curNode?.next != nil {
            if curNode?.val == curNode?.next?.val {
                curNode?.next = curNode?.next?.next
            } else {
                curNode = curNode?.next
            }
        }
        return head
    }
    
    func climbStairs(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        var first: Int = 1
        guard n > 1 else { return first }
        var second: Int = 2
        guard n > 2 else { return second }
        
        for _ in 3...n {
            let third = second + first
            first = second
            second = third
        }
        return second
    }
    
    func climb_Stairs(_ i: Int, n: Int, memo: inout [Int]) -> Int {
        guard i <= n else { return 0 }
        if i == n { return 1 }
        if memo[i] > 0 { return memo[i] }
        memo[i] = climb_Stairs(i + 1, n: n, memo: &memo) + climb_Stairs(i + 2, n: n, memo: &memo)
        return memo[i]
    }
    
    func mySqrt(_ x: Int) -> Int {
        var left: Int = 0
        var right: Int = (x / 2) + 1
        
        while left < right {
            let mid: Int = (left + right + 1) >> 1
            let suare: Int = mid * mid
            if suare > x {
                right = mid - 1
            } else {
                left = mid
            }
        }
        return left
    }
    
    func mySqrt1(_ x: Int) -> Int {
        var result: Int = 0
        for index in 0...Int.max {
            if index * index == x {
                return index
            } else if index * index < x {
                result = index
            } else {
                return result
            }
        }
        return result
    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        var aRevChars:[Character] = a.reversed()
        var bRevChars:[Character] = b.reversed()
        
        var result: String = ""
        var plus: Int = 0
        for i in 0..<max(aRevChars.count, bRevChars.count) {
            let aValue: Int = (i < aRevChars.count) ? (Int("\(aRevChars[i])") ?? 0) : 0
            let bValue: Int = (i < bRevChars.count) ? (Int("\(bRevChars[i])") ?? 0) : 0
            let value: Int = aValue + bValue + plus
            result = "\(value % 2)" + result
            plus = value / 2
        }
        
        if plus != 0 {
            result = "\(plus)" + result
        }
        
        return result
    }
    
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
let b = ListNode(1)
let c = ListNode(2)
let d = ListNode(2)
let e = ListNode(3)
let f = ListNode(4)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = f

var arr = [3,2,2,3]
var result = solutionFunc.deleteDuplicates(a)
print(result)
