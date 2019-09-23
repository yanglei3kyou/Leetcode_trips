//
//  L-257.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/23.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a binary tree, return all root-to-leaf paths.

Note: A leaf is a node with no children.

Example:

Input:

    1
  /   \
 2     3
  \
   5

Output: ["1->2->5", "1->3"]

Explanation: All root-to-leaf paths are: 1->2->5, 1->3
*/

// 嵌套
/*
func binaryTreePaths(_ root: TreeNode?) -> [String] {
    guard let root = root else { return [] }
    var result: [String] = []
    result.append(contentsOf: binaryTreePaths(root.left) .map({ "\(root.val)->\($0)" }))
    result.append(contentsOf: binaryTreePaths(root.right).map({ "\(root.val)->\($0)" }))
    if result.isEmpty { result.append("\(root.val)") }
    return result
}
*/
