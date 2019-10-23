//
//  L-404.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/23.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Find the sum of all left leaves in a given binary tree.

Example:

3
/ \
9  20
/  \
15   7

There are two left leaves in the binary tree, with values 9 and 15 respectively. Return 24.
*/

// 嵌套
/*
func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    if let left = node.left, left.left == nil, left.right == nil {
        return left.val + sumOfLeftLeaves(node.right)
    }
    return sumOfLeftLeaves(node.left) + sumOfLeftLeaves(node.right)
}
*/

// 迭代
/*
func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    var result: Int = 0
    var nodes: [TreeNode] = [root]
    while nodes.isEmpty == false {
        let node = nodes.removeFirst()
        if let left = node.left {
            if left.left == nil, left.right == nil {
                result += left.val
            } else {
                nodes.append(left)
            }
        }
        if let right = node.right {
            nodes.append(right)
        }
    }
    return result
}
*/
