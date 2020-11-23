//
//  StringExt.swift
//  MFRecommends
//
//  Created by 唐桂富 on 2020/11/23.
//  Copyright © 2020 Tyrone. All rights reserved.
//

import Foundation

fileprivate func _reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
    var start = start, end = end
    while start < end {
        _swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func _swap<T>(_ chars: inout [T],_ p: Int, _ q: Int){
    (chars[p],chars[q]) = (chars[q],chars[p])
}

func reverseWords(s: String?) -> String? {
    guard let s = s else{
        return nil
    }
    var chars = Array(s),start = 0
    _reverse(&chars, 0, chars.count - 1)
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i+1] == " "{
            _reverse(&chars, start, i)
            start = i + 2
        }
    }
    return String(chars)
}
