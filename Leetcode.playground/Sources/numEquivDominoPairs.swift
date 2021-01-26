import Foundation

public func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
    
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
        count = count + newDominoes.count - dd.count
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

//let dominoes = [[1,2],[2,1],[3,4],[5,6]]
////    [[1,2],[1,2],[1,1],[1,2],[2,2]]
//let result = numEquivDominoPairs(dominoes)
//print(result)


