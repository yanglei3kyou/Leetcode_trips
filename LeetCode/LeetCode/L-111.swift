//
//  L-111.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/18.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/minimum-depth-of-binary-tree/solution/er-cha-shu-de-zui-xiao-shen-du-by-leetcode/

/*
Given a binary tree, find its minimum depth.

The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.

Note: A leaf is a node with no children.

Example:

Given binary tree [3,9,20,null,null,15,7],

    3
   / \
  9  20
 /  \
15   7
return its minimum depth = 2.
 
*/

// 深度优先搜索迭代
/*
func minDepth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    var stack: [(TreeNode, Int)] = [(node, 1)]
    var mDepth: Int = Int.max
    while !stack.isEmpty {
        let current = stack.removeLast()
        let currentNode: TreeNode = current.0
        let currentDepth: Int = current.1
        if currentNode.left == nil && currentNode.right == nil { mDepth = min(mDepth, currentDepth) }
        if let leftNode = currentNode.left { stack.append((leftNode, currentDepth + 1)) }
        if let rightNode = currentNode.right { stack.append((rightNode, currentDepth + 1)) }
    }
    return mDepth
}
*/

// 递归
/*
func minDepth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    if node.left == nil && node.right == nil { return 1 }
    var mDepth: Int = Int.max
    if node.left != nil { mDepth = min(minDepth(node.left), mDepth) }
    if node.right != nil { mDepth = min(minDepth(node.right), mDepth) }
    return mDepth + 1
}
*/
