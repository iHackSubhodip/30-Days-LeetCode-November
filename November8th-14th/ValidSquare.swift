/*
 Question - Valid Square
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3527/
 */

class Solution {
  func validSquare(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
    return check(p1, p2, p3, p4) || check(p1, p3, p2, p4) || check(p1, p2, p4, p3)
  }
  
  private func distance(_ p1: [Int], _ p2: [Int]) -> Int {
    return (p2[1] - p1[1]) * (p2[1] - p1[1]) + (p2[0] - p1[0]) * (p2[0] - p1[0])
  }
  
  private func check(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
    return distance(p1, p2) > 0
      && distance(p1, p2) == distance(p2, p3)
      && distance(p2, p3) == distance(p3, p4)
      && distance(p3, p4) == distance(p4, p1)
      && distance(p1, p3) == distance(p2, p4)
  }
}
