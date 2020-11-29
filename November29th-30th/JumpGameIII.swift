/*
 Question - Jump Game III
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/568/week-5-november-29th-november-30th/3548/
 */

class Solution {
  func canReach(_ arr: [Int], _ start: Int) -> Bool {
    var visited = arr.map { _ in false }
    func visit(_ i: Int) -> Bool {
      guard i >= 0 && i < arr.count && !visited[i] else { return false }
      visited[i] = true
      return arr[i] == 0 || visit(i - arr[i]) || visit(i + arr[i])
    }
    return visit(start)
  }
}
