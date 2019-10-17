//
//  L-374.swift
//  LeetCode
//
//  Created by yanglei on 2019/10/17.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

// https://leetcode-cn.com/problems/guess-number-higher-or-lower/solution/cai-shu-zi-da-xiao-by-leetcode/
/*
We are playing the Guess Game. The game is as follows:

I pick a number from 1 to n. You have to guess which number I picked.

Every time you guess wrong, I'll tell you whether the number is higher or lower.

You call a pre-defined API guess(int num) which returns 3 possible results (-1, 1, or 0):

-1 : My number is lower
1 : My number is higher
0 : Congrats! You got it!
 
Example :
Input: n = 10, pick = 6
Output: 6
 
*/

// 二分法
/*
int guessNumber(int n) {
    int left = 0;
    int right = n;
    int mid = 0;
    
    while (left <= right) {
        mid = left + (right - left) / 2;
        int result = guess(mid);
        if (result == 0) {
            return mid;
        } else if (result == 1) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1;
}
*/
