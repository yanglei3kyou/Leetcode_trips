//
//  L-001.swift
//  LeetCode
//
//  Created by yanglei on 2016/9/24.
//  Copyright © 2016年 Lyren. All rights reserved.
//

import Foundation

/*
 
   Given nums = [2, 7, 11, 15], target = 9,
 
   Because nums[0] + nums[1] = 2 + 7 = 9,
   return [0, 1].
 
 */

/*
    哈希映射
 */

/*
   class Solution {
       func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
           var numsMaps: [Int: Int] = [:]
           for (index, value) in nums.enumerated() {
               if let lIndex = numsMaps[target - value] {
                   return [lIndex, index]
               }
               numsMaps[value] = index
           }
           return [0, 0]
       }
   }
 
 
   var solutionFunc = Solution.init();
   var result = solutionFunc.twoSum([3,2,4], 6);
   print(result);
*/
		
