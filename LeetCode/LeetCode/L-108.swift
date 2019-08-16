//
//  L-108.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/16.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.

Example:

Given the sorted array: [-10,-3,0,5,9],

One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:

     0
    / \
  -3   9
  /   /
-10  5
*/


// 递归
/*
func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard nums.count > 0 else { return nil }
    let middle: Int = nums.count >>> 1
    
    let result: TreeNode = TreeNode(nums[middle])
    let leftIndex: Int = middle - 1
    let rightIndex: Int = middle + 1
    
    if leftIndex >= 0 {
        var leftPart: [Int] = []
        for index in 0...leftIndex { leftPart.append(nums[index]) }
        result.left = sortedArrayToBST(leftPart)
    }
    
    if rightIndex < nums.count {
        var rightPart: [Int] = []
        for index in rightIndex..<nums.count { rightPart.append(nums[index]) }
        result.right = sortedArrayToBST(rightPart)
    }
    return result
}
*/

// 迭代
/*
class MyTreeNode {
    public var root: TreeNode
    public var start: Int
    public var end: Int
    
    public init(_ root: TreeNode, start: Int, end: Int) {
        self.root = root
        self.start = start
        self.end = end
    }
}

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    guard nums.count > 0 else { return nil }
    var rootQueue: [MyTreeNode] = []
    let root: TreeNode = TreeNode(0)
    
    rootQueue.append(MyTreeNode(root, start: 0, end: nums.count))
    
    while !rootQueue.isEmpty {
        let myRoot: MyTreeNode = rootQueue.removeLast()
        
        let start: Int = myRoot.start
        let end: Int = myRoot.end
        let mid: Int = (start + end ) >> 1
        let curRoot: TreeNode = myRoot.root
        curRoot.val = nums[mid]
        if start < mid {
            curRoot.left = TreeNode(0)
            rootQueue.append(MyTreeNode(curRoot.left!, start: start, end: mid))
        }
        if mid + 1 < end {
            curRoot.right = TreeNode(0)
            rootQueue.append(MyTreeNode(curRoot.right!, start: mid+1, end: end))
        }
    }
    return root
}
*/
