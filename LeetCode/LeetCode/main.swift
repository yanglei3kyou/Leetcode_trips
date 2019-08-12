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


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution {
    func check(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p == nil || q == nil { return false }
        if p?.val != q?.val { return false } else { return true }
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        
        if !check(p, q) { return false }
        
        var depP: [TreeNode?] = [p]
        var depQ: [TreeNode?] = [q]
        
        while !depP.isEmpty {
            let p = depP.removeLast()
            let q = depQ.removeLast()
            
            if !check(p, q) { return false }
            
            if p != nil {
                if !check(p?.left, q?.left) { return false }
                if p?.left != nil {
                    depP.insert(p?.left, at: depP.count)
                    depQ.insert(q?.left, at: depQ.count)
                }
             
                if !check(p?.right, q?.right) { return false }
                if p?.right != nil {
                    depP.insert(p?.right, at: depP.count)
                    depQ.insert(q?.right, at: depQ.count)
                }
            }
        }
        return true
    }
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i: Int = m - 1
        var j: Int = n - 1
        var p: Int = m + n - 1
        while i >= 0 && j >= 0 {
            if (nums1[i] >= nums2[j]) {
                nums1[p] = nums1[i]
                i -= 1
            } else {
                nums1[p] = nums2[j]
                j -= 1
            }
            p -= 1
        }
        
        while j >= 0 {
            nums1[p] = nums2[j]
            j -= 1
            p -= 1
        }
    }
    //   3 4 5 0 0 0     1 2 3
    //   1 2 3 0 0 0     3 4 5
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

var arr = [0]
var result = solutionFunc.merge(&arr, 0, [1], 1)
print(result)
