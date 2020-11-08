/*
 Question - Binary Tree Tilt
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3524/
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
  func findTilt(_ root: TreeNode?) -> Int {
    guard let root = root else {
      return 0
    }
    
    var tilt = 0
    
    findTiltHelper(root, &tilt)
    
    return tilt
  }
  
  func findTiltHelper(_ root: TreeNode?, _ tilt: inout Int) -> Int {
    guard let root = root else {
      return 0
    }
    
    let leftSum = findTiltHelper(root.left, &tilt)
    let rightSum = findTiltHelper(root.right, &tilt)
    
    tilt += abs(leftSum - rightSum)
    
    return leftSum + rightSum + root.val
  }
}
