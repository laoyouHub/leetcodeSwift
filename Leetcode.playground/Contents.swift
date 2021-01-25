import UIKit



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    func des() {
        
        
        
        var ss: ListNode = self
        var ssCollection: [NSInteger] = [ss.val]
        while ss.next != nil {
            
            ssCollection.append(ss.val)
            
            ss = self.next!
        }
        print(ssCollection)
    }
    
    
}


class Solution {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let newList:ListNode = ListNode(0)
        
        var result = newList
        
        var q1 = l1
        var q2 = l2
        
        var addheader = 0
        
        while q1 != nil || q2 != nil {
            let newVal = (q1?.val ?? 0) + (q2?.val ?? 0) + addheader
            addheader = newVal/10
            
            result.next = ListNode(newVal%10)
            result =  result.next!
            
            q1 = q1?.next
            q2 = q2?.next
        }
        
        if addheader == 1 {
            result.next = ListNode(1)
        }
        
        return newList.next
    }
}

let l1 = ListNode(2, ListNode(4, ListNode(3, nil)))
let l2 = ListNode(5, ListNode(6, ListNode(4, nil)))

Solution.addTwoNumbers(l1, l2)?.des()
