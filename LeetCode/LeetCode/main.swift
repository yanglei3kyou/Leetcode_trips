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
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        
        var slow: Int = 0
        
        for fast in 1..<nums.count {
            if nums[slow] != nums[fast] {
                slow += 1
                nums[slow] = nums[fast]
            }
        }
        return slow + 1
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var p1: ListNode? = l1
        var p2: ListNode? = l2
        let preHead: ListNode? = ListNode(-1)
        var prev = preHead
        while p1 != nil && p2 != nil {
            if (p1?.val ?? 0) < (p2?.val ?? 0) {
                prev?.next = p1
                p1 = p1?.next
            } else {
                prev?.next = p2
                p2 = p2?.next
            }
            prev = prev?.next
        }
        
        prev?.next = (p1 == nil) ? p2 : p1
        return preHead?.next
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

var arr = [0,0,1,1,1,2,2,3,3,4]
var result = solutionFunc.removeDuplicates(&arr)
print(result)
