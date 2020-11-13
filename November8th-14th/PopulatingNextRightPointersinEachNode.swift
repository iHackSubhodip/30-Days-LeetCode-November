/*
 Question - Populating Next Right Pointers in Each Node
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3529/
 */

public class Node {
  public var val: Int
  public var left: Node?
  public var right: Node?
  public var next: Node?
  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
    self.next = nil
  }
}


class Solution {
  func connect(_ root: Node?) -> Node? {
    guard let notNilRoot = root else {
      return nil
    }
    notNilRoot.left?.next = notNilRoot.right
    notNilRoot.right?.next = notNilRoot.next?.left
    let _ = connect(notNilRoot.left)
    let _ = connect(notNilRoot.right)
    return notNilRoot
  }
}
