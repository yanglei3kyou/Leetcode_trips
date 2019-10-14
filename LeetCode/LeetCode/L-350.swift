//
//  L-350.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/14.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Given two arrays, write a function to compute their intersection.

Example 1:
Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]
 
Example 2:
Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [4,9]
 
Note:

Each element in the result should appear as many times as it shows in both arrays.
The result can be in any order.
 
Follow up:
What if the given array is already sorted? How would you optimize your algorithm?
What if nums1's size is small compared to nums2's size? Which algorithm is better?
What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
*/

// 哈希表
/*
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: [Int] = []
    var mapInfo: [Int: Int] = [:]
    for num in nums1 { mapInfo[num] = (mapInfo[num] ?? 0) + 1 }
    for num in nums2 {
        if let count = mapInfo[num], count > 0 {
            mapInfo[num] = count - 1
            result.append(num)
        }
    }
    return result
}
*/

// 双指针
/*
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result: [Int] = []
    var minSortedNums: [Int] = nums1.count <  nums2.count ? nums1.sorted() : nums2.sorted()
    var maxSortedNums: [Int] = nums1.count >= nums2.count ? nums1.sorted() : nums2.sorted()
    
    var minI: Int = 0
    var maxI: Int = 0
    
    while minI < minSortedNums.count, maxI < maxSortedNums.count {
        if minSortedNums[minI] == maxSortedNums[maxI] {
            result.append(minSortedNums[minI])
            minI += 1
            maxI += 1
        } else if minSortedNums[minI] < maxSortedNums[maxI] {
            minI += 1
        } else if minSortedNums[minI] > maxSortedNums[maxI] {
            maxI += 1
        }
    }
    return result
}
*/
