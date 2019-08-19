//
//  L-112.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/19.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

Note: A leaf is a node with no children.

Example:

Given the below binary tree and sum = 22,

5
/ \
4   8
/   / \
11  13  4
/  \      \
7    2      1
return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
 
*/

// 递归
/*
func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard let node = root else { return false }
    return hasPathSum(node, sum, node.val)
}

func hasPathSum(_ root: TreeNode?, _ sum: Int, _ preSum: Int) -> Bool {
    guard let node = root else { return false }
    if node.left == nil && node.right == nil {
        return sum == preSum
    }
    return hasPathSum(node.left , sum, preSum + (node.left?.val  ?? 0)) ||
           hasPathSum(node.right, sum, preSum + (node.right?.val ?? 0))
}
*/

// 迭代(层级遍历、广度优先遍历)
/*
func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard let node = root else { return false }
    var stack: [(TreeNode?, Int)] = [(node, node.val)]
    
    while !stack.isEmpty {
        let current = stack.removeFirst()
        let currentNode: TreeNode? = current.0
        let currentSum: Int = current.1
        
        if currentNode?.left == nil && currentNode?.right == nil {
            if currentSum == sum {
                return true
            } else {
                continue
            }
        }
        
        if currentNode?.left != nil {
            stack.append((currentNode?.left, currentSum + (currentNode?.left?.val ?? 0)))
        }
        
        if currentNode?.right != nil {
            stack.append((currentNode?.right, currentSum + (currentNode?.right?.val ?? 0)))
        }
    }
    return false
}
*/

// 迭代(层级遍历、深度优先遍历)
/*
func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
    guard let node = root else { return false }
    var stack: [(TreeNode?, Int)] = [(node, node.val)]
    
    while !stack.isEmpty {
        let current = stack.removeLast()
        let currentNode: TreeNode? = current.0
        let currentSum: Int = current.1
        
        if currentNode?.left == nil && currentNode?.right == nil {
            if currentSum == sum {
                return true
            } else {
                continue
            }
        }
        
        if currentNode?.left != nil {
            stack.append((currentNode?.left, currentSum + (currentNode?.left?.val ?? 0)))
        }
        
        if currentNode?.right != nil {
            stack.append((currentNode?.right, currentSum + (currentNode?.right?.val ?? 0)))
        }
    }
    return false
}
*/
