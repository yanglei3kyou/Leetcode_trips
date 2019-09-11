//
//  L-206.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/11.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Reverse a singly linked list.

Example:

Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
 
Follow up:

A linked list can be reversed either iteratively or recursively. Could you implement both?
*/

// 递归
/*
func reverseList(_ head: ListNode?) -> ListNode? {
    guard head != nil && head?.next != nil else { return head }
    let p = reverseList(head?.next)
    head?.next?.next = head
    head?.next = nil
    return p
}
*/

// 迭代
/*
func reverseList(_ head: ListNode?) -> ListNode? {
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
*/

// 临时指针暂存，链表中间插入
/*
func reverseList(_ head: ListNode?) -> ListNode? {
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
*/
