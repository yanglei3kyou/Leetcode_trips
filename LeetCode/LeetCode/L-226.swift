//
//  L-226.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/16.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation


/*
Invert a binary tree.

Example:

Input:

     4
   /   \
  2     7
 / \   / \
1   3 6   9
Output:

     4
   /   \
  7     2
 / \   / \
9   6 3   1
Trivia:
This problem was inspired by this original tweet by Max Howell:

Google: 90% of our engineers use the software you wrote (Homebrew), but you can’t invert a binary tree on a whiteboard so f*** off.
*/

// 迭代(层级遍历)
/*
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else { return nil }
    var array: [TreeNode] = [root]
    
    while array.count != 0 {
        let node: TreeNode = array.removeFirst()
        let left: TreeNode? = node.left
        let right: TreeNode? = node.right
        node.left = right
        node.right = left
        if let right = right { array.append(right) }
        if let left = left { array.append(left) }
    }
    return root
}
*/

// 嵌套
/*
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard root != nil else { return nil }
    let left: TreeNode? = root?.left
    let right: TreeNode? = root?.right
    root?.left = invertTree(right)
    root?.right = invertTree(left)
    return root
}
*/
