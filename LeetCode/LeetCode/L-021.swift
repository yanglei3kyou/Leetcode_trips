//
//  L-021.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/2.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

Example:

Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
*/


// 函数嵌套
/*
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil { return l2 }
    
    if l2 == nil { return l1 }
    
    if l1?.val ?? 0 < l2?.val ?? 0 {
        l1?.next = mergeTwoLists(l1?.next, l2)
        return l1
    } else {
        l2?.next = mergeTwoLists(l1, l2?.next)
        return l2
    }
}
*/

// 构造节点(复杂算法)
/*
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil && l2 == nil { return nil }
    
    let result: ListNode? = ListNode(0)
    var tip = result
    var p1: ListNode? = l1
    var p2: ListNode? = l2
    
    while p1 != nil || p2 != nil {
        let node: ListNode = ListNode(0)
        
        if let p1V = p1, let p2V = p2 {
            node.val = min(p1V.val, p2V.val)
            
            if p1V.val <= p2V.val {
                p1 = p1?.next
            } else {
                p2 = p2?.next
            }
        } else if let p1V = p1 {
            node.val = p1V.val
            p1 = p1?.next
        } else if let p2V = p2 {
            node.val = p2V.val
            p2 = p2?.next
        }
        
        tip?.next = node
        tip = tip?.next
    }
    return result?.next
}
*/
