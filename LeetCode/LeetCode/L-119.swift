//
//  L-119.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/21.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a non-negative index k where k ≤ 33, return the kth index row of the Pascal's triangle.

Note that the row index starts from 0.


In Pascal's triangle, each number is the sum of the two numbers directly above it.

Example:

Input: 3
Output: [1,3,3,1]
*/

// 递归
/*
func getRow(_ rowIndex: Int) -> [Int] {
    return getRow([], rowIndex: rowIndex + 1)
}

func getRow(_ rows: [Int], rowIndex: Int) -> [Int] {
    guard rows.count != rowIndex else { return rows }
    
    var last: Int = 0
    var array: [Int] = []
    for value in rows {
        array.append(last + value)
        last = value
    }
    array.append(1)
    return getRow(array, rowIndex: rowIndex)
}
*/

// 迭代
/*
func getRow(_ rowIndex: Int) -> [Int] {
    var result: [Int] = []
    for _ in 0..<(rowIndex+1) {
        var last: Int = 0
        var array: [Int] = []
        for value in result {
            array.append(last + value)
            last = value
        }
        array.append(1)
        result = array
    }
    return result
}
*/
