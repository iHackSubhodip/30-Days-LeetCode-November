/*
 Question - Partition Equal Subset Sum
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3545/
 */

class Solution {
  func canPartition(_ nums: [Int]) -> Bool {
    let sum = nums.reduce(0, +)
    if sum % 2 != 0 {
      return false
    }
    let w = sum / 2
    var dp = [Bool](repeating: false, count: w + 1)
    dp[0] = true
    for num in nums {
      for i in stride(from: w, through: 0, by: -1) {
        if num <= i {
          dp[i] = dp[i] || dp[i-num]
        }
      }
    }
    return dp[w]
  }
}
