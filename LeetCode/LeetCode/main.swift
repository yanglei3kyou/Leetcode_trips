//
//  main.swift
//  LeetCode
//
//  Created by yanglei on 2016/9/25.
//  Copyright © 2016年 Lyren. All rights reserved.
//

import Foundation

/*
 nums1 = [1, 3]
 nums2 = [2]
 
 The median is 2.0
 
 */


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let node = root else { return 0 }
        var stack: [(TreeNode, Int)] = [(node, 1)]

        var currentDepth: Int = 0

        while !stack.isEmpty {
            let current = stack.removeLast()
            let currentNode: TreeNode = current.0
            currentDepth = current.1
            
            if currentNode.left == nil && currentNode.right == nil { break }
            if let leftNode = currentNode.left { stack.append((leftNode, currentDepth + 1)) }
            if let rightNode = currentNode.right { stack.append((rightNode, currentDepth + 1)) }
        }
        return currentDepth
    }
    
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
    
    
    
    func check(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p == nil || q == nil { return false }
        if p?.val != q?.val { return false } else { return true }
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        
        if !check(p, q) { return false }
        
        var depP: [TreeNode?] = [p]
        var depQ: [TreeNode?] = [q]
        
        while !depP.isEmpty {
            let p = depP.removeLast()
            let q = depQ.removeLast()
            
            if !check(p, q) { return false }
            
            if p != nil {
                if !check(p?.left, q?.left) { return false }
                if p?.left != nil {
                    depP.insert(p?.left, at: depP.count)
                    depQ.insert(q?.left, at: depQ.count)
                }
             
                if !check(p?.right, q?.right) { return false }
                if p?.right != nil {
                    depP.insert(p?.right, at: depP.count)
                    depQ.insert(q?.right, at: depQ.count)
                }
            }
        }
        return true
    }
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var i: Int = m - 1
        var j: Int = n - 1
        var p: Int = m + n - 1
        while i >= 0 && j >= 0 {
            if (nums1[i] >= nums2[j]) {
                nums1[p] = nums1[i]
                i -= 1
            } else {
                nums1[p] = nums2[j]
                j -= 1
            }
            p -= 1
        }
        
        while j >= 0 {
            nums1[p] = nums2[j]
            j -= 1
            p -= 1
        }
    }
    //   3 4 5 0 0 0     1 2 3
    //   1 2 3 0 0 0     3 4 5
}

var solutionFunc = Solution.init()

let a = ListNode(1)
let b = ListNode(1)
let c = ListNode(2)
let d = ListNode(2)
let e = ListNode(3)
let f = ListNode(4)

a.next = b
b.next = c
c.next = d
d.next = e
e.next = f

let tree1 = TreeNode(1)
let tree2 = TreeNode(2)
let tree3 = TreeNode(2)
let tree4 = TreeNode(3)
let tree5 = TreeNode(4)
let tree6 = TreeNode(4)
let tree7 = TreeNode(3)

tree1.left = tree2
tree1.right = tree3

tree2.left = tree4
tree2.right = tree5

tree3.left = tree6
tree3.right = tree7

var arr = [0]
var result = solutionFunc.isSymmetric(tree1)
print(result)
