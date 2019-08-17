//
//  L-110.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/17.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a binary tree, determine if it is height-balanced.

For this problem, a height-balanced binary tree is defined as:

a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

Example 1:

Given the following tree [3,9,20,null,null,15,7]:

   3
  / \
 9  20
/  \
15   7
Return true.

Example 2:

Given the following tree [1,2,2,3,3,null,null,4,4]:

     1
    / \
   2   2
  / \
 3   3
/ \
4   4
Return false.
*/

// 从底至顶（提前阻断法）
/*
func isBalanced(_ root: TreeNode?) -> Bool {
    return depth(root) != -1
}

func depth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    
    let left: Int = depth(node.left)
    if left == -1 { return -1 }
    let right: Int = depth(node.right)
    if right == -1 { return -1 }
    return abs(left - right) < 2 ? max(left, right) + 1 : -1
}
*/


// 从顶至底（暴力法）
/*
func isBalanced(_ root: TreeNode?) -> Bool {
    guard root != nil else { return true }
    return abs(depth(root?.left) - depth(root?.right)) < 2 &&
        isBalanced(root?.left) &&
        isBalanced(root?.right)
}

func depth(_ root: TreeNode?) -> Int {
    guard let node = root else { return 0 }
    return max(depth(node.left), depth(node.right)) + 1
}
*/
