//
//  L-225.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/15.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Implement the following operations of a stack using queues.

push(x) -- Push element x onto stack.
pop() -- Removes the element on top of the stack.
top() -- Get the top element.
empty() -- Return whether the stack is empty.
 
Example:

MyStack stack = new MyStack();

stack.push(1);
stack.push(2);
stack.top();   // returns 2
stack.pop();   // returns 2
stack.empty(); // returns false
 
Notes:

You must use only standard operations of a queue -- which means only push to back, peek/pop from front, size, and is empty operations are valid.
Depending on your language, queue may not be supported natively. You may simulate a queue by using a list or deque (double-ended queue), as long as you use only standard operations of a queue.
You may assume that all operations are valid (for example, no pop or top operations will be called on an empty stack).
*/

// 用队列实现
/*
class MyStack {
    fileprivate var queue: [Int] = []
    
    /** Initialize your data structure here. */
    init() { }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        let count: Int = queue.count
        queue.append(x)
        for _ in 0..<count {
            queue.append(queue.removeFirst())
        }
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int { return queue.removeFirst() }
    
    /** Get the top element. */
    func top() -> Int { return queue.first ?? 0 }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool { return queue.isEmpty }
}
*/

// 用数组实现
/*
class MyStack {
    fileprivate var stack: [Int] = []
    
    /** Initialize your data structure here. */
    init() { }
    
    /** Push element x onto stack. */
    func push(_ x: Int) { stack.append(x) }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int { return stack.popLast() ?? 0 }
    
    /** Get the top element. */
    func top() -> Int { return stack.last ?? 0 }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool { return stack.isEmpty }
}
*/
