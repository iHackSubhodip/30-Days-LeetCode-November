/*
 Question - Range Sum of BST
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3532/
 */

class Solution {
  func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
    guard let root = root else { return 0 }
    var sum = 0
    if root.val >= L && root.val <= R{
      sum += root.val
    }
    
    sum += rangeSumBST(root.left, L, R)
    sum += rangeSumBST(root.right, L, R)
    return sum
  }
}
