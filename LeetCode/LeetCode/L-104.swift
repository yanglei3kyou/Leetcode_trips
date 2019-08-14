//
//  L-104.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/14.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Note: A leaf is a node with no children.

Example:

Given binary tree [3,9,20,null,null,15,7],

3
/ \
9  20
/  \
15   7
return its depth = 3.
*/


// 递归
/*
func maxDepth(_ root: TreeNode?) -> Int {
    guard root != nil else { return 0 }
    return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
}
*/

// 迭代(层级遍历)
/*
func maxDepth(_ root: TreeNode?) -> Int {
    guard root != nil else { return 0 }
    
    var queue: [TreeNode?] = [root]
    var depth: Int = 0
    
    while !queue.isEmpty {
        var array: [TreeNode?] = []
        
        while !queue.isEmpty {
            let tree: TreeNode? = queue.removeFirst()
            if tree?.left != nil { array.append(tree?.left) }
            if tree?.right != nil { array.append(tree?.right) }
        }
        
        depth += 1
        queue = array
    }
    return depth
}
*/
