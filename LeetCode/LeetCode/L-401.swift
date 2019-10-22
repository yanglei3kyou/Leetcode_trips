//
//  L-401.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/22.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
A binary watch has 4 LEDs on the top which represent the hours (0-11), and the 6 LEDs on the bottom represent the minutes (0-59).

Each LED represents a zero or one, with the least significant bit on the right.

For example, the above binary watch reads "3:25".

Given a non-negative integer n which represents the number of LEDs that are currently on, return all possible times the watch could represent.

Example:

Input: n = 1
Return: ["1:00", "2:00", "4:00", "8:00", "0:01", "0:02", "0:04", "0:08", "0:16", "0:32"]
Note:
The order of output does not matter.
The hour must not contain a leading zero, for example "01:00" is not valid, it should be "1:00".
The minute must be consist of two digits and may contain a leading zero, for example "10:2" is not valid, it should be "10:02".
*/

// 暴力计算法
/*
func readBinaryWatch(_ num: Int) -> [String] {
    func countOneNum(_ num: Int) -> Int {
        var count: Int = 0
        var n = num
        while n != 0 {
            n = n & (n - 1)
            count += 1
        }
        return count
    }
    
    var result: [String] = []
    for hour in 0..<12 {
        for minu in 0..<60 {
            if countOneNum(hour) + countOneNum(minu) == num {
                result.append("\(hour):" + (minu < 10 ? "0\(minu)" : "\(minu)"))
            }
        }
    }
    return result
}
*/
