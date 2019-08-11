//
//  L-083.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/11.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a sorted linked list, delete all duplicates such that each element appear only once.

Example 1:

Input: 1->1->2
Output: 1->2
 
Example 2:

Input: 1->1->2->3->3
Output: 1->2->3
*/

// 链表移除法
/*
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard head != nil  else { return nil }
    var curNode: ListNode? = head
    while curNode != nil && curNode?.next != nil {
        if curNode?.val == curNode?.next?.val {
            curNode?.next = curNode?.next?.next
        } else {
            curNode = curNode?.next
        }
    }
    return head
}
*/

// 自己的方法
/*
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard head != nil  else { return nil }
    var preNode: ListNode? = head
    var node: ListNode? = preNode?.next
    while node != nil {
        if node?.val == preNode?.val {
            preNode?.next = node?.next
        } else {
            preNode = node
        }
        node = node?.next
    }
    return head
}
*/
