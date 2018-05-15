//
//  BucketSort.swift
//  BucketSort
//
//  Created by sw on 2018/5/15.
//  Copyright © 2018年 ws. All rights reserved.
//

import Foundation


class Node {
    var next: Node?
    var data: Int = -1
    
    class func instance(data: Int) -> Node {
        let node = Node()
        node.data = data
        
        return node
    }
    
}


/// 桶排序
///
/// - Parameters:
///   - array: 待排序数组
///   - bucketSize: 桶的大小
func bucketSort(array: [Int], bucketSize: Int) -> [Int] {
    var result: [Int] = Array()
    var bucket: [Node] = Array()
    
    for i in 0 ..< bucketSize {
        bucket.append(Node())
    }
    
    for i in 0 ..< array.count {
        let bucketIndex = hash(value: array[i])
        
        let node: Node = Node.instance(data: array[i])
        var p: Node = bucket[bucketIndex]
        
        if p.next == nil { // 没有元素
            p.next = node
        } else { // 已经有元素
            while p.next != nil && p.next?.data != nil && (p.next?.data)! <= node.data {
                p = p.next!
            }
            node.next = p.next
            p.next = node
        }
    }
    
    var j = 0
    
    for i in 0 ..< bucket.count {
        var p: Node? = bucket[i].next
        while p != nil {
            result.append((p?.data)!)
            j = j + 1
            p = p?.next
        }
    }
    
    return result
}


func hash(value: Int) -> Int {
    return value / 10
}



func simpleBucketSort(arr: Array<Int>, max: Int, desc: Bool) {
    
    var tempArr = Array(repeating: 0, count: max)
    print(tempArr)
    
    for i in arr {
        tempArr[i] += 1
    }
    
    if desc {
        // 降序
        for item in tempArr.enumerated().reversed() {
            for _ in 0 ..< item.element {
                print(item.offset)
            }
        }
    } else {
        // 升序
        for item in tempArr.enumerated() {
            for _ in 0 ..< item.element {
                print(item.offset)
            }
        }
    }
    
}


