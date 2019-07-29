//
//  main.swift
//  LeetCode
//
//  Created by yanglei on 2016/9/25.
//  Copyright © 2016年 Lyren. All rights reserved.
//

import Foundation



/*
 nums1 = [1, 3]
 nums2 = [2]
 
 The median is 2.0
 
 */

class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // 确保mNums.count < nNums.count
        var mNums: [Int] = (nums1.count > nums2.count) ? nums2 : nums1
        var nNums: [Int] = (nums1.count > nums2.count) ? nums1 : nums2
        let m = mNums.count
        let n = nNums.count
        
        var iMin = 0
        var iMax = m
        let halfLen = (m + n + 1) / 2
        while iMin <= iMax {
            let i = (iMin + iMax) / 2
            let j = halfLen - i
            if i < iMax && nNums[j-1] > mNums[i] {
                iMin = i + 1
            } else if i > iMin && mNums[i - 1] > nNums[j] {
                iMax = i - 1
            } else {
                var maxLeft = 0
                if i == 0 {
                    maxLeft = nNums[j - 1]
                } else if j == 0 {
                    maxLeft = mNums[i - 1]
                } else {
                    maxLeft = max(mNums[i - 1], nNums[j - 1])
                }
                
                if (m + n) % 2 == 1 { return Double(maxLeft) }
                
                var minRight = 0
                if i == m {
                    minRight = nNums[j]
                } else if j == n {
                    minRight = mNums[i]
                } else {
                    minRight = min(nNums[j], mNums[i])
                }
                return Double((maxLeft + minRight)) / 2.0
            }
        }
        return 0.0
    }
    
    
    func findMedianSortedArrays1(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var i = 0; var j = 0; var index = 0
        let nums1Count = nums1.count
        let nums2Count = nums2.count
        var nums: [Int] = [Int]()
        let isOdd = (nums1Count + nums2Count) % 2 != 0
        let middle = (nums1Count + nums2Count) / 2
        
        while i < nums1Count || j < nums2Count {
            if i < nums1Count && j < nums2Count {
                let val1 = nums1[i]
                let val2 = nums2[j]
                if  val1 < val2 {
                    nums.append(val1)
                    i += 1
                } else {
                    nums.append(val2)
                    j += 1
                }
            } else if i < nums1Count {
                nums.append(nums1[i])
                i += 1
            } else if j < nums2Count {
                nums.append(nums2[j])
                j += 1
            }

            if index == middle {
                return isOdd ? Double(nums[middle]) : (Double((nums[middle] + nums[middle-1])) / 2.0)
            }
            index += 1
        }
        return 0.0
    }
}


//var solutionFunc = Solution.init();
//var result = solutionFunc.twoSum([3,2,4], 6);
//print(result);

print(3/2)
print(4/2)
print(5/2)
