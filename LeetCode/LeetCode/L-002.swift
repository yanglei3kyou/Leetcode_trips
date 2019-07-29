//
//  L-002.swift
//  LeetCode
//
//  Created by yanglei on 2019/7/2.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
    Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
    Output: 7 -> 0 -> 8
    Explanation: 342 + 465 = 807.
 */

/*
 链表相加
 */

/*
   public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
   }
 
 
   class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
            var result: ListNode? = ListNode(0)
            let resultP: ListNode? = result
 
            var p1: ListNode? = l1
            var p2: ListNode? = l2
 
            var exValue: Int = 0
 
            while p1 != nil || p2 != nil || exValue != 0 {
                let val: Int = (p1?.val ?? 0) + (p2?.val ?? 0) + exValue
                result?.val = val % 10
                exValue = val / 10
 
                p1 = p1?.next
                p2 = p2?.next
 
                if p1 != nil || p2 != nil || exValue != 0 {
                    result?.next = ListNode(0)
                }
                result = result?.next
            }
            return resultP
        }
    }
 */
