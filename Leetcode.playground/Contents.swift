import UIKit


//let l1 = TwoSub.ListNode(2, TwoSub.ListNode(4, TwoSub.ListNode(3, nil)))
//let l2 = TwoSub.ListNode(5, TwoSub.ListNode(6, TwoSub.ListNode(4, nil)))
//TwoSub.addTwoNumbers(l1, l2)?.des()

let dominoes = [[1,2],[2,1],[3,4],[5,6]]
//    [[1,2],[1,2],[1,1],[1,2],[2,2]]
let result = numEquivDominoPairs(dominoes)
print(result)
