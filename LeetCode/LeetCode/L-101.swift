//
//  L-101.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/12.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

1
/ \
2   2
/ \ / \
3  4 4  3


But the following [1,2,2,null,3,null,3] is not:

1
/ \
2   2
\   \
3    3


Note:
Bonus points if you could solve it both recursively and iteratively.
*/

// 嵌套
/*
func isSymmetric(_ root: TreeNode?) -> Bool {
    return isMirror(root, root)
}

func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if left == nil && right == nil { return true }
    if left == nil || right == nil { return false }
    return (left?.val == right?.val) && isMirror(left?.left, right?.right)
        && isMirror(left?.right, right?.left)
}
*/

// 迭代
/*
func isSymmetric(_ root: TreeNode?) -> Bool {
    var treeStack: [TreeNode?] = [TreeNode?]()
    treeStack.append(root)
    treeStack.append(root)
    
    while !treeStack.isEmpty {
        let tree1: TreeNode? = treeStack.removeLast()
        let tree2: TreeNode? = treeStack.removeLast()
        
        if tree1 == nil && tree2 == nil { continue }
        if tree1 == nil || tree2 == nil { return false }
        if tree1?.val != tree2?.val { return false }
        
        treeStack.append(tree1?.left)
        treeStack.append(tree2?.right)
        treeStack.append(tree1?.right)
        treeStack.append(tree2?.left)
    }
    return true
}
*/

/* 左右树遍历(根左右、根右左遍历必须一致)
func isSymmetric(_ root: TreeNode?) -> Bool {
    var mlr: [Int?] = [Int?]()
    var mrl: [Int?] = [Int?]()
    getTreeNode(root, array: &mlr, isLeft: true)
    getTreeNode(root, array: &mrl, isLeft: false)
    
    guard mlr.count == mrl.count else { return false }
    var isSame: Bool = true
    for index in 0..<mlr.count {
        if mlr[index] != mrl[index] {
            isSame = false
            break
        }
    }
    return isSame
}

func getTreeNode(_ root: TreeNode?, array: inout [Int?], isLeft: Bool) {
    
    guard root?.left != nil || root?.right != nil else { array.append(root?.val); return }
    array.append(root?.val)
    
    if isLeft {
        getTreeNode(root?.left, array: &array, isLeft: isLeft)
        getTreeNode(root?.right, array: &array, isLeft: isLeft)
    } else {
        getTreeNode(root?.right, array: &array, isLeft: isLeft)
        getTreeNode(root?.left, array: &array, isLeft: isLeft)
    }
}
*/
