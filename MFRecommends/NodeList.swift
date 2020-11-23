//
//  NodeList.swift
//  MFRecommends
//
//  Created by 唐桂富 on 2020/11/23.
//  Copyright © 2020 Tyrone. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class List {
    var head : ListNode?
    var tail: ListNode?
    func appendTotail(_ val: Int) {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        } else {
            tail!.next = ListNode(val)
            tail = tail!.next
        }
    }
    func appendToHead(_ val: Int) {
        if head == nil {
            head = ListNode(val)
            tail = head
        } else {
            let temp = ListNode(val)
            temp.next = head
            head = temp
        }
    }
}

func getLefyList(_ head: ListNode?, _ x: Int) -> ListNode? {
    let dummy = ListNode(0)
    var pre = dummy, node = head
    while node != nil {
        if node!.val < x {
            pre.next = node;
            pre = node!
        }
        node = node!.next
    }
    pre.next = nil
    return dummy.next
}

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    let prevDummy = ListNode(0),postDummy = ListNode(0)
    var prev = prevDummy,post = postDummy
    var node = head
    while node != nil {
        if node!.val < x {
            prev.next = node
            prev = node!
        }else{
            post.next = node
            post = node!
        }
        node = node!.next
    }
    post.next = nil
    prev.next = postDummy.next
    return prevDummy.next
}


func removeNthFromEnd(head: ListNode?, _ n: Int) -> ListNode? {
    guard let head = head else {
        return nil
    }
    let dummy = ListNode(0)
    dummy.next = head
    var prev: ListNode? = dummy
    var post: ListNode? = dummy
    
    for _ in 0 ..< n {
        if post == nil {
            break
        }
        post = post!.next
    }
    
    while post != nil && post!.next != nil {
        prev = prev!.next
        post = post!.next
    }
    prev!.next = prev!.next!.next
    return dummy.next
}


func printList(_ head:ListNode?) {
    var dummy:ListNode? = head
    while dummy != nil {
        print(dummy!.val)
        dummy = dummy!.next
    }
}
