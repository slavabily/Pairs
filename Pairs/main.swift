//
//  main.swift
//  Pairs
//
//  Created by slava bily on 13.12.2021.
//

import Foundation

func pairs(k: Int, arr: [Int]) -> Int {
    var diffs = [Int]()
    for i in 0..<arr.count {
        for j in i..<arr.count {
            let diff = abs(arr[i] - arr[j])
            diffs.append(diff)
        }
    }
    print(diffs)
    var matches = 0
    for i in diffs {
        if i == k {
           matches += 1
        }
    }
    return matches
}

print(pairs(k: 1, arr: [1,2,3,4]))

