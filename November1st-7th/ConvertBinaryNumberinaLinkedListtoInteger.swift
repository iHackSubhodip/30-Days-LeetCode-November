/*
 Question - Convert Binary Number in a Linked List to Integer
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3516/
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val =val; self.next = next; }
}

class Solution {
  func getDecimalValue(_ head: ListNode?) -> Int {
    var ans = 0, node: ListNode? = head
    while node != nil {
      ans = ans * 2 + node!.val
      node = node?.next
    }
    return ans
  }
}
