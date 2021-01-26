//
//  numEquivDominoPairs.swift
//  LeetCodeXcode
//
//  Created by JianjiaCoder on 2021/1/26.
//

import Foundation

/*
 给你一个由一些多米诺骨牌组成的列表 dominoes。

 如果其中某一张多米诺骨牌可以通过旋转 0 度或 180 度得到另一张多米诺骨牌，我们就认为这两张牌是等价的。

 形式上，dominoes[i] = [a, b] 和 dominoes[j] = [c, d] 等价的前提是 a==c 且 b==d，或是 a==d 且 b==c。

 在 0 <= i < j < dominoes.length 的前提下，找出满足 dominoes[i] 和 dominoes[j] 等价的骨牌对 (i, j) 的数量。
 */
public func numEquivDominoPairs2(_ dominoes: [[Int]]) -> Int {

    var count = 0
    var newDominoes = dominoes
    if newDominoes.count < 2 {
        return count
    }
    var item = newDominoes.first
    newDominoes.remove(at: 0)

    while item != nil {

        let item2 = [item![1], item![0]]

        let dd = newDominoes.filter { $0 != item! && $0 != item2 }
        let max = newDominoes.count - dd.count
        count = count + (max + 1)*max/2
        newDominoes = dd
        if newDominoes.count >= 2 {
            item = newDominoes.first
            newDominoes.remove(at: 0)
        }else{
            item = nil
        }

    }
    return count
}

public func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {

    var freq: [Int] = Array(repeating: 0, count: 100)
        var count = 0
    dominoes.forEach {
        let newDominoe = $0.sorted()
        let num = newDominoe[0]*10 + newDominoe[1]
        count += freq[num]
        freq[num] += 1
    }
        return count
}

//let dominoes = [[1,2],[2,1],[3,4],[5,6]]
////    [[1,2],[2,1],[3,4],[5,6]]
////    [[1,2],[1,2],[1,1],[1,2],[2,2]]
//let result = numEquivDominoPairs(dominoes)
//print(result)
