//
//  L-155.swift
//  LeetCode
//
//  Created by yanglei on 2019/8/25.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
getMin() -- Retrieve the minimum element in the stack.

Example:

MinStack minStack = new MinStack();
minStack.push(-2);
minStack.push(0);
minStack.push(-3);
minStack.getMin();   --> Returns -3.
minStack.pop();
minStack.top();      --> Returns 0.
minStack.getMin();   --> Returns -2.
*/

// 辅助栈、数据栈不同步
/*
class MinStack {
    fileprivate var stack: [Int] = []
    fileprivate var minStack: [Int] = []
    
    init() { }
    
    func push(_ x: Int) {
        stack.append(x)
        if let minValue: Int = minStack.last, x > minValue {
        } else {
            minStack.append(x)
        }
    }
    
    func pop() {
        let item: Int = stack.removeLast()
        if let minItem = minStack.last, minItem == item {
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last ?? 0
    }
    
    func getMin() -> Int {
        return minStack.last ?? 0
    }
}
*/

// 辅助栈、数据栈同步
/*
class MinStack {
    fileprivate var stack: [Int] = []
    fileprivate var minStack: [Int] = []
    
    init() { }
    
    func push(_ x: Int) {
        stack.append(x)
        if let minValue: Int = minStack.last, x > minValue {
            minStack.append(minValue)
        } else {
            minStack.append(x)
        }
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last ?? 0
    }
    
    func getMin() -> Int {
        return minStack.last ?? 0
    }
}
*/
