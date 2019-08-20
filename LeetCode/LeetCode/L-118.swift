//
//  L-118.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/20.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.

In Pascal's triangle, each number is the sum of the two numbers directly above it.

Example:

Input: 5
Output:
[
[1],
[1,1],
[1,2,1],
[1,3,3,1],
[1,4,6,4,1]
]
*/

// 迭代
/*
func generate(_ numRows: Int) -> [[Int]] {
    guard numRows > 0 else { return [] }
    var result: [[Int]] = []
    for index in 1...numRows {
        var array: [Int] = []
        for i in 0..<index {
            if i == 0 || i == (index - 1) {
                array.append(1)
            } else {
                let left: Int = result[index - 2][i - 1]
                let right: Int = result[index - 2][i]
                array.append(left + right)
            }
        }
        result.append(array)
    }
    return result
}
*/

// 递归
/*
func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = []
    generate([], numRows: numRows, result: &result)
    return result
}

func generate(_ rows: [Int], numRows: Int, result: inout [[Int]]) {
    guard numRows > 0 else { result = []; return }
    guard result.count < numRows else { return }
    var array: [Int] = []
    var last: Int = 0
    for row in rows {
        array.append(last + row)
        last = row
    }
    array.append(1)
    result.append(array)
    generate(array, numRows: numRows, result: &result)
}
*/
