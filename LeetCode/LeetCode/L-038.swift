//
//  L-038.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/6.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
The count-and-say sequence is the sequence of integers with the first five terms as following:

1.     1
2.     11
3.     21
4.     1211
5.     111221
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.
 
Example 1:

Input: 1
Output: "1"
 
 
Example 2:

Input: 4
Output: "1211"
 
*/

/*
    题目的意思是对序列前一个数进行报数，数列第一项不是1吗，那第二项就报第一项的有1个1，输出11，
    然后第三项就在第二项的基础上报数，第二项是11，第三项不就是2个1么，然后输出21
 */

// 普通算法
/*
func countAndSay(_ n: Int) -> String {
    guard n > 0, n < 31 else { return "" }
    
    var result: String = "1"
    
    var char: Character = Character("-")
    var count: Int = 0
    var rawString: String = ""
    
    var index: Int = 1
    
    while index < n {
        char = Character("-")
        count = 0
        rawString = ""
        
        for (_, item) in result.enumerated() {
            if char == item {
                count += 1
            } else {
                if count != 0 {
                    rawString += "\(count)\(char)"
                }
                char = item
                count = 1
            }
        }
        
        if count != 0 {
            rawString += "\(count)\(char)"
        }
        
        result = rawString
        index += 1
    }
    return result
}
*/
