//
//  L-107.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/15.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation
/*
Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).

For example:
Given binary tree [3,9,20,null,null,15,7],
3
/ \
9  20
/  \
15   7
return its bottom-up level order traversal as:
[
[15,7],
[9,20],
[3]
]
*/

// 递归
/*
func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    var result: [[Int]] = []
    levelOrderBottom(root, depth: 0, result: &result)
    return result.reversed()
}

func levelOrderBottom(_ node: TreeNode?, depth: Int, result: inout [[Int]]) {
    guard node != nil else { return }
    if result.count > depth { result[depth].append(node?.val ?? 0) } else { result.append([node?.val ?? 0]) }
    if node?.left != nil { levelOrderBottom(node?.left, depth: depth + 1, result: &result) }
    if node?.right != nil { levelOrderBottom(node?.right, depth: depth + 1, result: &result) }
}
*/

// 层级遍历
/*
func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
    guard root != nil else { return [] }
    
    var result: [[Int]] = []
    var queue: [TreeNode?] = [root]
    
    while !queue.isEmpty {
        result.append(queue.map { ($0?.val ?? 0) })
        var array: [TreeNode?] = []
        while !queue.isEmpty {
            let node: TreeNode? = queue.removeFirst()
            if node?.left == nil && node?.right == nil { continue }
            if node?.left != nil { array.append(node?.left) }
            if node?.right != nil { array.append(node?.right) }
        }
        queue = array
    }
    return result.reversed()
}
*/
