/*
 Question - Minimum Cost to Move Chips to The Same Position
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3520/
 */

class Solution {
  func minCostToMoveChips(_ position: [Int]) -> Int {
    return min(position.filter{$0 % 2 == 1}.count, position.filter{$0 % 2 == 0}.count)
  }
}
