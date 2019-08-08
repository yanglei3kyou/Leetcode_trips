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
    
    func countAndSay(_ n: Int) -> String {
        guard n > 0, n < 31 else { return "" }
        
        var result: String = "1"
        
        var char: Character = Character("-")
        var count: Int = 0
        var rawString: String = ""
        
        var index: Int = 1
        
        while index < n {
            char = Character("-")
            count = 0
            rawString = ""
            
            for (_, item) in result.enumerated() {
                if char == item {
                    count += 1
                } else {
                    if count != 0 {
                        rawString += "\(count)\(char)"
                    }
                    char = item
                    count = 1
                }
            }
            
            if count != 0 {
                rawString += "\(count)\(char)"
            }
            
            result = rawString
            index += 1
        }
        return result
    }
    
    
    
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while left <= right {
            let mid: Int = (left + right) / 2
            if target == nums[mid] {
                return mid
            } else if target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
            
        }
        return left
    }
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !needle.isEmpty else { return 0 }

        guard haystack.count >= needle.count else { return -1 }
        
        for i in 0...(haystack.count - needle.count) {
            for j in 0..<needle.count {
                if haystack.substring(with: Range(NSRange(location: i+j, length: 1), in: haystack)!) !=
                     needle.substring(with: Range(NSRange(location: j, length: 1), in: needle)!) {
                    break
                }
                
                if j == needle.count - 1 {
                    return i
                }
            }
        }
        return -1
    }
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count != 0 else { return 0 }
        
        var length: Int = nums.count
        var index: Int = 0
        while index < length {
            if nums[index] == val {
                nums[index] = nums[length-1]
                length -= 1
            } else {
                index += 1
            }
        }
        
        return length
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



