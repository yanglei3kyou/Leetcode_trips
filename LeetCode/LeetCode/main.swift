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


class MinStack {
    fileprivate var stack: [Int] = []
    fileprivate var minStack: [Int] = []
    
    init() { }
    
    func push(_ x: Int) {
        stack.append(x)
        if let minValue: Int = minStack.last, x > minValue {
        } else {
            minStack.append(x)
        }
    }
    
    func pop() {
        let item: Int = stack.removeLast()
        if let minItem = minStack.last, minItem == item {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last ?? 0
    }
    
    func getMin() -> Int {
        return minStack.last ?? 0
    }
}


class Solution {
    
    func rob(_ nums: [Int]) -> Int {
        var prevMax: Int = 0
        var currMax: Int = 0
        for num in nums {
            let temp = currMax
            currMax = max(prevMax + num, currMax)
            prevMax = temp
        }
        return currMax
    }
    
    
    func hammingWeight(_ n: UInt32) -> Int {
        var num: UInt32 = n
        var count: Int = 0
        for _ in 0..<32 {
            if (num & 1) != 0 {
                count += 1
            }
            num = num >> 1
        }
        return count
    }
    
    
    func reverseBits(_ n: UInt32) -> UInt32 {
        var num: UInt32 = n
        var res: UInt32 = 0
        for _ in 0..<32 {
            res = (res << 1) | (num & 1)
            num = num >> 1
        }
        return res
    }
    

    
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 0 else { return }
        let offset: Int = k % nums.count
        var squeue: [Int] = []
        let count: Int = nums.count
        for i in 0..<count {
            let index: Int = (count - offset + i) % count
            squeue.append(nums[index])
        }
        nums.removeAll()
        nums.append(contentsOf: squeue)
    }
    
    func trailingZeroes(_ n: Int) -> Int {
        return n >= 5 ? (n/5) + trailingZeroes(n/5) : 0
    }
    
    func titleToNumber(_ s: String) -> Int {
        let charToNumber: [String: Int] = ["A": 1 , "B": 2 , "C": 3 ,
                                           "D": 4 , "E": 5 , "F": 6 ,
                                           "G": 7 , "H": 8 , "I": 9 ,
                                           "J": 10, "K": 11, "L": 12,
                                           "M": 13, "N": 14, "O": 15,
                                           "P": 16, "Q": 17, "R": 18,
                                           "S": 19, "T": 20, "U": 21,
                                           "V": 22, "W": 23, "X": 24,
                                           "Y": 25, "Z": 26]
        
        var result: Int = 0
        var multiple: Int = 1
        for (_, item) in s.reversed().enumerated() {
            result = result + ((charToNumber["\(item)".uppercased()] ?? 0)*multiple)
            multiple *= 26
        }
        return result
    }
    
    func majorityElement(_ nums: [Int]) -> Int {
        return nums.sorted { $0 < $1 }[nums.count>>1]
    }
    
    func convertToTitle(_ n: Int) -> String {
        let numberToChar: [Int: String] = [1 : "A", 2 : "B", 3 : "C",
                                           4 : "D", 5 : "E", 6 : "F",
                                           7 : "G", 8 : "H", 9 : "I",
                                           10: "J", 11: "K", 12: "L",
                                           13: "M", 14: "N", 15: "O",
                                           16: "P", 17: "Q", 18: "R",
                                           19: "S", 20: "T", 21: "U",
                                           22: "V", 23: "W", 24: "X",
                                           25: "Y", 26: "Z"]
        var number: Int = n
        var result: String = ""
        while number > 0 {
            var index: Int = number % 26
            number = number / 26
            if index == 0 {
                index = 26
                number -= 1
            }
            result = (numberToChar[index] ?? "") + result
        }
        return result
    }
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left: Int = 0
        var right: Int = numbers.count - 1
        while left < right {
            let sum = numbers[left] + numbers[right]
            if sum == target {
                return [left + 1, right + 1]
            } else if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return []
    }
    
    func singleNumber(_ nums: [Int]) -> Int {
        var result: Int = 0
        for num in nums {
            result ^= num
        }
        return result
    }
    
    func isPalindrome(_ s: String) -> Bool {
        guard s.count > 0 else { return true }
        let sChars: [Character] = s.lowercased().reversed().filter { ("a" <= $0 && $0 <= "z") || ("0" <= $0 && $0 <= "9") }
        return sChars.reversed() == sChars
    }
    
    
    func getRow(_ rowIndex: Int) -> [Int] {
        return getRow([], rowIndex: rowIndex + 1)
    }
    
    func getRow(_ rows: [Int], rowIndex: Int) -> [Int] {
        guard rows.count != rowIndex else { return rows }
        
        var last: Int = 0
        var array: [Int] = []
        for value in rows {
            array.append(last + value)
            last = value
        }
        array.append(1)
        return getRow(array, rowIndex: rowIndex)
    }
    
    
    
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        generate([], numRows: numRows, result: &result)
        return result
    }
    
    func generate(_ rows: [Int], numRows: Int, result: inout [[Int]]) {
        guard numRows > 0 else { result = []; return }
        guard result.count < numRows else { return }
        var array: [Int] = []
        var last: Int = 0
        for row in rows {
            array.append(last + row)
            last = row
        }
        array.append(1)
        result.append(array)
        generate(array, numRows: numRows, result: &result)
    }
    
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        guard let node = root else { return false }
        var stack: [(TreeNode?, Int)] = [(node, node.val)]
        
        while !stack.isEmpty {
            let current = stack.removeLast()
            let currentNode: TreeNode? = current.0
            let currentSum: Int = current.1
            
            if currentNode?.left == nil && currentNode?.right == nil {
                if currentSum == sum {
                    return true
                } else {
                    continue
                }
            }
            
            if currentNode?.left != nil {
                stack.append((currentNode?.left, currentSum + (currentNode?.left?.val ?? 0)))
            }
            
            if currentNode?.right != nil {
                stack.append((currentNode?.right, currentSum + (currentNode?.right?.val ?? 0)))
            }
        }
        return false
    }
    
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
var result = solutionFunc.reverseBits(2)
print(result)
