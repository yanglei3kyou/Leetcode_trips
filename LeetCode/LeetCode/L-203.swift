//
//  L-203.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/8.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Remove all elements from a linked list of integers that have value val.

Example:

Input:  1->2->6->3->4->5->6, val = 6
Output: 1->2->3->4->5
*/

// 链表筛选
/*
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
*/
