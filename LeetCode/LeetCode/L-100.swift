//
//  L-100.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/12.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

Example 1:

Input:     1         1
/ \       / \
2   3     2   3

[1,2,3],   [1,2,3]

Output: true
 
Example 2:

Input:     1         1
/           \
2             2

[1,2],     [1,null,2]

Output: false
 
Example 3:

Input:     1         1
/ \       / \
2   1     1   2

[1,2,1],   [1,1,2]

Output: false
*/


// 递归(深度优先)
/*
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
*/

// 递归(深度优先)
/*
func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard p?.val == q?.val else { return false }
    
    if p == nil && q == nil {
        return true
    } else if p == nil || q == nil {
        return false
    } else {
        return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}
*/
