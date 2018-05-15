//
//  ViewController.swift
//  BucketSort
//
//  Created by sw on 2018/5/15.
//  Copyright © 2018年 ws. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var arr = [Int]()
        
        arr.append(10)
        arr.append(0)
        arr.append(4)
        arr.append(40)
        arr.append(32)
        arr.append(90)
        arr.append(61)
        arr.append(77)
        arr.append(11)
        
        let result = bucketSort(array: arr, bucketSize: 10)
        print(result)
        
    }

}

