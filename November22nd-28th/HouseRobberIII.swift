/*
 Question - House Robber III
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3541/
 */

class Solution {
  func rob(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    let ans = helper(root)
    return max(ans.0, ans.1)
  }
  
  func helper(_ root: TreeNode?) -> (Int, Int) {
    guard let root = root else {
      return (0, 0)
    }
    let left = helper(root.left), right = helper(root.right)
    
    let noCur = max(left.0, left.1) + max(right.0, right.1), cur = left.0 + right.0 + root.val
    
    return (noCur, cur)
  }
}
