/*
 Question - Maximum Difference Between Node and Ancestor
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3525/
 */

public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right=  nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right:TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  func maxAncestorDiff(_ root: TreeNode?) -> Int {
    guard let node = root else {
      return 0
    }
    
    return maxDiff(node, node.val, node.val)
  }
  
  private func maxDiff(_ root: TreeNode?, _ minVal: Int, _ maxVal: Int) -> Int {
    
    guard let node = root else {
      return abs(minVal - maxVal)
    }
    
    let minVal = min(minVal,  node.val)
    let maxVal = max(maxVal, node.val)
    let leftDiff = maxDiff(node.left, minVal, maxVal)
    let rightDiff = maxDiff(node.right, minVal, maxVal)
    
    return max(leftDiff, rightDiff)
  }
}
