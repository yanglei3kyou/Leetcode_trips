//
//  L-088.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/12.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:

The number of elements initialized in nums1 and nums2 are m and n respectively.
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
Example:

Input:
nums1 = [1,2,3,0,0,0], m = 3
nums2 = [2,5,6],       n = 3

Output: [1,2,2,3,5,6]
*/

// 双指针(从前往后)
/*
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i: Int = m - 1
    var j: Int = n - 1
    var p: Int = m + n - 1
    while i >= 0 && j >= 0 {
        if (nums1[i] >= nums2[j]) {
            nums1[p] = nums1[i]
            i -= 1
        } else {
            nums1[p] = nums2[j]
            j -= 1
        }
        p -= 1
    }
    
    while j >= 0 {
        nums1[p] = nums2[j]
        j -= 1
        p -= 1
    }
}
*/

// 双指针(从前往后)
/*
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var i: Int = 0
    var j: Int = 0
    var num1Len: Int = m
    while i < (m + n) && j < n {
        if (nums1[i] >= nums2[j]) || i == num1Len {
            nums1.insert(nums2[j], at: i)
            j += 1
            num1Len += 1
        } else {
            i += 1
        }
    }
    
    for _ in 0..<(nums1.count - m - n) {
        nums1.removeLast()
    }
}
*/
