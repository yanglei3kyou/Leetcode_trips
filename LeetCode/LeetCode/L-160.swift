//
//  L-160.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/26.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
 Write a program to find the node at which the intersection of two singly linked lists begins.

 For example, the following two linked lists:

 Example 1:

 Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,0,1,8,4,5], skipA = 2, skipB = 3
 Output: Reference of the node with value = 8
 
 Input Explanation: The intersected node's value is 8 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [4,1,8,4,5]. From the head of B, it reads as [5,0,1,8,4,5]. There are 2 nodes before the intersected node in A; There are 3 nodes before the intersected node in B.
 
*/

// 长短链拼接(双指针)
/*
func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    guard headA != nil, headB != nil else { return nil }
    var pA = headA
    var pB = headB
    while pA != pB {
        pA = pA != nil ? pA?.next : headB
        pB = pB != nil ? pB?.next : headA
    }
    return pA
}
*/
