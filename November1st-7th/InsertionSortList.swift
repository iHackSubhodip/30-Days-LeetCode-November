/*
 Question - Insertion Sort List
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3517/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
  func insertionSortList(_ head: ListNode?) -> ListNode? {
    guard let head = head else { return nil }
    let lead = ListNode(Int.min)
    lead.next = head
    
    var end = head 
    while let p = end.next {
      if p.val < end.val {
        var prev = lead, curr = lead.next
        while curr!.val <= p.val {
          prev = curr!
          curr = curr!.next
        }
        end.next = p.next
        prev.next = p
        p.next = curr
      } else {
        end = p
      }
    }
    
    return lead.next
  }
}
