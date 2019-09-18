//
//  L-232.swift
//  LeetCode
//
//  Created by yanglei on 2019/9/18.
//  Copyright © 2019 Lyren. All rights reserved.
//

import Foundation

/*
Implement the following operations of a queue using stacks.

push(x) -- Push element x to the back of queue.
pop() -- Removes the element from in front of queue.
peek() -- Get the front element.
empty() -- Return whether the queue is empty.
 
Example:

MyQueue queue = new MyQueue();

queue.push(1);
queue.push(2);
queue.peek();  // returns 1
queue.pop();   // returns 1
queue.empty(); // returns false
 
Notes:

You must use only standard operations of a stack -- which means only push to top, peek/pop from top, size, and is empty operations are valid.
Depending on your language, stack may not be supported natively. You may simulate a stack by using a list or deque (double-ended queue), as long as you use only standard operations of a stack.
You may assume that all operations are valid (for example, no pop or peek operations will be called on an empty queue).
*/

// 双队列
/*
class MyQueue {
    
    fileprivate var stack1: [Int] = []
    fileprivate var stack2: [Int] = []
    fileprivate var front: Int = 0
    init() { }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        if stack1.isEmpty { front = x }
        stack1.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if stack2.isEmpty {
            while stack1.isEmpty == false {
                stack2.append(stack1.removeLast())
            }
        }
        return stack2.popLast() ?? 0
    }
    
    /** Get the front element. */
    func peek() -> Int {
        if stack2.isEmpty == false { return stack2.last ?? 0 }
        return front
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool { return stack1.isEmpty && stack2.isEmpty }
}
*/

// 插入的时候对数据进行特殊处理
/*
class MyQueue {
    
    fileprivate var stack: [Int] = []
    
    init() { }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        var tmpStack: [Int] = []
        tmpStack.append(x)
        tmpStack.append(contentsOf: stack)
        stack = tmpStack
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return stack.popLast() ?? 0
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return stack.last ?? 0
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool { return stack.isEmpty }
}
*/
