//
//  L-234.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/19.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a singly linked list, determine if it is a palindrome.

Example 1:

Input: 1->2
Output: false
 
Example 2:

Input: 1->2->2->1
Output: true
 
Follow up:
Could you do it in O(n) time and O(1) space?
*/

// 寻找中心点并翻转前半部分
/*
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
*/
