/*
 Question - Add Two Numbers II
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3522/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val =val; self.next = next; }
}

class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var l1Stack: [Int] = [], l2Stack: [Int] = [], l1 = l1, l2 = l2, result = ListNode(0), sum = 0
    while l1 != nil{
      l1Stack.append(l1?.val ?? 0)
      l1 = l1?.next
    }
    
    while l2 != nil{
      l2Stack.append(l2?.val ?? 0)
      l2 = l2?.next
    }
    
    while !l1Stack.isEmpty || !l2Stack.isEmpty{
      if !l1Stack.isEmpty{
        sum += l1Stack.removeLast()
      }
      
      if !l2Stack.isEmpty{
        sum += l2Stack.removeLast()
      }
      
      result.val = sum % 10
      let current = ListNode(sum/10)
      current.next = result
      result = current
      sum /= 10
    }
    
    return result.val == 0 ? result.next : result
  }
}
