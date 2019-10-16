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

class MyStack {
    fileprivate var queue: [Int] = []
    
    /** Initialize your data structure here. */
    init() { }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        let count: Int = queue.count
        queue.append(x)
        for _ in 0..<count {
            queue.append(queue.removeFirst())
        }
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int { return queue.removeFirst() }
    
    /** Get the top element. */
    func top() -> Int { return queue.first ?? 0 }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool { return queue.isEmpty }
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

class MyQueue {
    
    fileprivate var stack1: [Int] = []
    fileprivate var stack2: [Int] = []
    fileprivate var front: Int = 0
    init() { }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        if stack1.isEmpty { front = x }
        stack1.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if stack2.isEmpty {
            while stack1.isEmpty == false {
                stack2.append(stack1.removeLast())
            }
        }
        return stack2.popLast() ?? 0
    }
    
    /** Get the front element. */
    func peek() -> Int {
        if stack2.isEmpty == false { return stack2.last ?? 0 }
        return front
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool { return stack1.isEmpty && stack2.isEmpty }
}


class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var sum: Int = a
        var other: Int = b
        var carry: Int = 0
        while other != 0 {
            carry = (sum & other) << 1
            sum = sum ^ other
            other = carry
        }
        return sum
    }
    
    func isPerfectSquare(_ num: Int) -> Bool {
        var start: Int = 1
        var end: Int = num
        var mid: Int = start + (end - start) / 2
        while start <= end {
            if mid * mid > num {
                end = mid - 1
            } else if mid * mid < num {
                start = mid + 1
            } else {
                return true
            }
            mid = start + (end - start) / 2
        }
        return false
    }
    
    func isPerfectSquare2(_ num: Int) -> Bool {
        var i: Int = 1
        var tmpNum: Int = num
        while tmpNum > 0 {
            tmpNum -= i
            i += 2
        }
        return tmpNum == 0
    }
    
    func isPerfectSquare1(_ num: Int) -> Bool {
        guard num != 1 else { return true }
        for i in 0...(num >> 1) {
            if i * i == num { return true }
        }
        return false
    }
    
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var mapInfo: [Int: Int] = [:]
        for num in nums1 { mapInfo[num] = (mapInfo[num] ?? 0) + 1 }
        for num in nums2 {
            if let count = mapInfo[num], count > 0 {
                mapInfo[num] = count - 1
                result.append(num)
            }
        }
        return result
    }
    
    func intersect1(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var minSortedNums: [Int] = nums1.count <  nums2.count ? nums1.sorted() : nums2.sorted()
        var maxSortedNums: [Int] = nums1.count >= nums2.count ? nums1.sorted() : nums2.sorted()
        
        var minI: Int = 0
        var maxI: Int = 0
        
        while minI < minSortedNums.count, maxI < maxSortedNums.count {
            if minSortedNums[minI] == maxSortedNums[maxI] {
                result.append(minSortedNums[minI])
                minI += 1
                maxI += 1
            } else if minSortedNums[minI] < maxSortedNums[maxI] {
                minI += 1
            } else if minSortedNums[minI] > maxSortedNums[maxI] {
                maxI += 1
            }
        }
        return result
    }
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let resultSet: Set<Int> = Set<Int>(nums1).intersection(nums2)
        return Array<Int>(resultSet)
    }
    
    func reverseVowels(_ s: String) -> String {
        var chars: [Character] = []
        var vowelIndex: [Int] = []
        for (index, item) in s.enumerated() {
            chars.append(item)
            if item == "a" || item == "e" || item == "i" || item == "o" || item == "u" ||
               item == "A" || item == "E" || item == "I" || item == "O" || item == "U" {
                vowelIndex.append(index)
            }
        }
        
        var left : Int = 0
        var right: Int = vowelIndex.count - 1
        var tmp: Character
        
        while left < right {
            tmp = chars[vowelIndex[left]]
            chars[vowelIndex[left]] = chars[vowelIndex[right]]
            chars[vowelIndex[right]] = tmp
            
            left  += 1
            right -= 1
        }
        
        return String(chars)
    }
    
    func reverseString(_ s: inout [Character]) {
        var left : Int = 0
        var right: Int = s.count - 1
        var tmp: Character
        
        while left < right {
            tmp = s[left]
            s[left] = s[right]
            s[right] = tmp
            left += 1
            right -= 1
        }
    }
    
    func reverseString1(_ s: inout [Character]) {
        guard s.count > 0 else { return }
        let count: Int = s.count
        var tmp: Character = s.first!
        for index in 0..<(count >> 1) {
            tmp = s[index]
            s[index] = s[count - index - 1]
            s[count - index - 1] = tmp
        }
    }
    
    func isPowerOfFour(_ num: Int) -> Bool {
        guard num > 0, num & (num - 1) == 0 else { return false }
        return (num & 0x55555555) != 0
    }
    
    // 0x0010000
    func isPowerOfFour1(_ num: Int) -> Bool {
        guard num > 0 else { return false }
        var n: Int = num
        while n & 3 == 0 { n = n >> 2 }
        return n == 1
    }
    
    // 0   000      1   001     3 - 1  =   2     0010
    /*
     0   0000
     1   0001
     2   0010
     3   0011
     4   0100
     5   0101
     6   0110
     7   0111
     */
    func isPowerOfThree(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var num: Int = n
        while num % 3 == 0 { num /= 3 }
        return num == 1
    }
    
    func isPowerOfThree1(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var num: Int = n
        while num != 0 {
            if num == 1 { return true }
            if num % 3 != 0 { return false }
            num /= 3
        }
        return true
    }
    
    class NumArray {
        fileprivate var sumMap: [Int: Int] = [:]
        init(_ nums: [Int]) {
            for (index, num) in nums.enumerated() {
                sumMap[index + 1] = num + (sumMap[index] ?? 0)
            }
        }
        
        func sumRange(_ i: Int, _ j: Int) -> Int {
            return (sumMap[j + 1] ?? 0) - (sumMap[i] ?? 0)
        }
    }
    
    func getHint(_ secret: String, _ guess: String) -> String {
        var secret = secret
        var guess = guess
        
        var aCount: Int = 0
        var charArray: [Character] = []
        var waitCompareArray: [Character] = []
        
        while let aChar = secret.first, let bChar = guess.first{
            if aChar == bChar {
                aCount += 1
            } else {
                charArray.append(aChar)
                waitCompareArray.append(bChar)
            }
            secret.removeFirst()
            guess.removeFirst()
        }
        
        
        var bCount: Int = 0
        while let compareChar = waitCompareArray.first {
            if let index = charArray.firstIndex(of: compareChar) {
                bCount += 1
                charArray.remove(at: index)
            }
            waitCompareArray.removeFirst()
        }
        return "\(aCount)A\(bCount)B"
    }
    
    func canWinNim(_ n: Int) -> Bool {
        return (n & 3) != 0
    }
    
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let strArray = str.split(separator: " ")
        guard pattern.count == strArray.count else { return false }
        var mapRecord: [Character: Substring] = [:]
        for (index, item) in pattern.enumerated() {
            if let value = mapRecord[item] {
                if value != strArray[index] { return false }
            } else {
                let str = strArray[index]
                if mapRecord.values.contains(str) == false {
                    mapRecord[item] = str
                } else {
                    return false
                }
            }
        }
        return true
    }
    
    func moveZeroes(_ nums: inout [Int]) {
        var lastNotZeroFoundAt: Int = 0
        for (index, item) in nums.enumerated() {
            if item != 0 {
                let tmp = nums[lastNotZeroFoundAt]
                nums[lastNotZeroFoundAt] = item
                nums[index] = tmp
                lastNotZeroFoundAt += 1
            }
        }
    }
    
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        var result: [String] = []
        result.append(contentsOf: binaryTreePaths(root.left) .map({ "\(root.val)->\($0)" }))
        result.append(contentsOf: binaryTreePaths(root.right).map({ "\(root.val)->\($0)" }))
        if result.isEmpty { result.append("\(root.val)") }
        return result
    }
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
    
    func isAnagram1(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        var sInfos: [Character: Int] = [:]
        var tInfos: [Character: Int] = [:]
        for (_, item) in s.enumerated() { sInfos[item] = (sInfos[item] ?? 0) + 1 }
        for (_, item) in t.enumerated() { tInfos[item] = (tInfos[item] ?? 0) + 1 }
        for (_, item) in sInfos.enumerated() { if tInfos[item.key] != item.value { return false } }
        return true
    }
    
    func deleteNode(_ node: ListNode?) {
        node?.val = node?.next?.val ?? 0
        node?.next = node?.next?.next
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, p: TreeNode?, q: TreeNode?) -> TreeNode? {
        let parentVal = root?.val ?? 0
        let pVal = p?.val ?? 0
        let qVal = q?.val ?? 0
        
        if pVal > parentVal && qVal > parentVal {
            return lowestCommonAncestor(root?.right, p: p, q: q)
        } else if pVal < parentVal && qVal < parentVal {
            return lowestCommonAncestor(root?.left, p: p, q: q)
        } else {
            return root
        }
    }
    
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard head?.next != nil else { return true }
        var head: ListNode? = head
        var mid: ListNode? = head
        var pre: ListNode? = nil
        var reversed: ListNode? = nil
        
        while head != nil && head?.next != nil {
            pre = mid
            mid = mid?.next
            head = head?.next?.next
            
            pre?.next = reversed
            reversed = pre
        }
        
        if head != nil { mid = mid?.next }
        
        while mid != nil {
            if let reverValue = reversed?.val, let value = mid?.val, reverValue != value { return false }
            reversed = reversed?.next
            mid = mid?.next
        }
        
        return true
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil && head?.next != nil else { return head }
        let p = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        return p
    }
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n > 0 && (n & (n - 1) == 0)
    }
    
    func isPowerOfTwo1(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        var num: Int = n
        var oneCount: Int = 0
        while num != 0 {
            if num & 1 != 0 { oneCount += 1 }
            num = num >> 1
        }
        return oneCount == 1
    }
    
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
    
    func invertTree1(_ root: TreeNode?) -> TreeNode? {
        guard root != nil else { return nil }
        let left: TreeNode? = root?.left
        let right: TreeNode? = root?.right
        root?.left = invertTree(right)
        root?.right = invertTree(left)
        return root
    }
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var valuesInK: Set<Int> = Set<Int>()
        for (index, value) in nums.enumerated() {
            if valuesInK.contains(value) { return true }
            valuesInK.insert(value)
            if valuesInK.count > k { valuesInK.remove(nums[index-k]) }
        }
        return false
    }
    
    func containsNearbyDuplicate1(_ nums: [Int], _ k: Int) -> Bool {
        var valueIndexMap: [Int: Int] = [:]
        for (index, value) in nums.enumerated() {
            if let preIndex = valueIndexMap[value], index - preIndex <= k {
                return true
            }
            valueIndexMap[value] = index
        }
        return false
    }
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let sortNums: [Int] = nums.sorted()
        for (index, num) in sortNums.enumerated() {
            if index + 1 < sortNums.count, num == sortNums[index+1] {
                return true
            }
        }
        return false
    }
    
    func containsDuplicate2(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
    
    func containsDuplicate1(_ nums: [Int]) -> Bool {
        var numsMap: [Int: Bool] = [Int: Bool]()
        for num in nums {
            if let result = numsMap[num], result == true {
                return true
            } else {
                numsMap[num] = true
            }
        }
        return false
    }
    

    
    func reverseList1(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var curr: ListNode? = head
        while curr != nil {
            let next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
        }
        return prev
    }
    
    func reverseList2(_ head: ListNode?) -> ListNode? {
        let result: ListNode = ListNode(-1)
        var tmp: ListNode? = head
        while tmp != nil {
            let node = ListNode(tmp!.val)
            node.next = result.next
            result.next = node
            tmp = tmp?.next
        }
        return result.next
    }
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let sChars: [Character] = s.reversed().reversed()
        let tChars: [Character] = t.reversed().reversed()
        var stMap: [Character: Character] = [Character: Character]()
        for (index, item) in sChars.enumerated() {
            if let storeC = stMap[item] {
                if storeC == tChars[index] {
                    continue
                } else {
                    return false
                }
            } else {
                if stMap.values.contains(tChars[index]) {
                    return false
                }
                stMap[item] = tChars[index]
            }
        }
        return true
    }
    
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else { return 0 }
        var count: Int = 1
        for i in 3..<n {
            if i & 1 == 0 { continue }
            var sign: Bool = true
            
            var j = 3
            while j * j <= i {
                if i % j == 0 {
                    sign = false
                    break
                }
                j += 2
            }
            if sign { count += 1 }
        }
        return count
    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        let result: ListNode? = ListNode(0)
        var curr: ListNode? = result
        var node: ListNode? = head
        while node != nil {
            if node!.val != val {
                curr?.next = ListNode(node!.val)
                curr = curr?.next
            }
            node = node?.next
        }
        return result?.next
    }
    
    func bitSquareSum(_ n: Int) -> Int {
        var sum: Int = 0
        var num: Int = n
        while num > 0 {
            let bit: Int = num % 10
            sum += (bit * bit)
            num /= 10
        }
        return sum
    }
    
    func isHappy(_ n: Int) -> Bool {
        var slow: Int = n
        var fast: Int = bitSquareSum(n)
        while slow != fast {
            slow = bitSquareSum(slow)
            fast = bitSquareSum(fast)
            fast = bitSquareSum(fast)
        }
        return slow == 1
    }
    
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

let a = ListNode(0)
let b = ListNode(0)
let c = ListNode(2)
let d = ListNode(2)
let e = ListNode(3)
let f = ListNode(4)

a.next = b
b.next = nil
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
var result = solutionFunc.intersect([4,9,5], [9,4,9,8,4])
print(result)
