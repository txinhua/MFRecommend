//
//  Stack.swift
//  MFRecommends
//
//  Created by 唐桂富 on 2020/11/23.
//  Copyright © 2020 Tyrone. All rights reserved.
//

import Foundation

protocol Stack {
    associatedtype Element
    var isEmpty: Bool { get }
    var size: Int { get }
    var peek: Element? { get }
    mutating func push(_ newElement: Element)
    mutating func pop() -> Element?
}

struct IntegerStack: Stack {
    private var stack = [Element]()
    typealias Element = Int
    var isEmpty: Bool { return stack.isEmpty }
    var size: Int { return stack.count }
    var peek: Int? { return stack.last }
    mutating func push(_ newElement: Int) {
        stack.append(newElement)
    }
    mutating func pop() -> Int? {
        return stack.popLast()
    }
    
}
