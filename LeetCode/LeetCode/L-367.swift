//
//  L-367.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/15.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

// 公式法 1+3+5+7+9+…+(2n-1)=n^2
/*
func isPerfectSquare(_ num: Int) -> Bool {
    var i: Int = 1
    var tmpNum: Int = num
    while tmpNum > 0 {
        tmpNum -= i
        i += 2
    }
    return tmpNum == 0
}
*/

// 二分比对
/*
func isPerfectSquare(_ num: Int) -> Bool {
    var start: Int = 1
    var end: Int = num
    var mid: Int = start + (end - start) / 2
    while start <= end {
        if mid * mid > num {
            end = mid - 1
        } else if mid * mid < num {
            start = mid + 1
        } else {
            return true
        }
        mid = start + (end - start) / 2
    }
    return false
}
*/

// 折半比对
/*
func isPerfectSquare(_ num: Int) -> Bool {
    guard num != 1 else { return true }
    for i in 0...(num >> 1) {
        if i * i == num { return true }
    }
    return false
}
*/
