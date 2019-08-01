//
//  L-020.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/1.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.
 
 Example 1:
 
 Input: "()"
 Output: true
 
 Example 4:
 
 Input: "([)]"
 Output: false
 
 Example 5:
 
 Input: "{[]}"
 Output: true
*/


// 栈
/*
func isValid(_ s: String) -> Bool {
    let map: [Character : Character] = [")": "(",
                                        "}": "{",
                                        "]":"["]
    var arr: [Character] = [Character]()
    for (_, x) in s.enumerated() {
        if let c = map[x] {
            if arr.last != c {
                return false
            } else {
                arr.removeLast()
            }
        } else {
            arr.append(x)
        }
    }
    return arr.count == 0
}
*/
