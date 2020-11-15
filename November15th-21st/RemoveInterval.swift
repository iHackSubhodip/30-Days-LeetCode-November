/*
 Question - Remove Interval
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3531/
 */

class Solution {
  func removeInterval(_ intervals: [[Int]], _ toBeRemoved: [Int]) -> [[Int]] {
    var res = [[Int]]()
    for interval in intervals {
      let maxL = max(interval[0], toBeRemoved[0])
      let minR = min(interval[1], toBeRemoved[1])
      if maxL < minR {
        if maxL == toBeRemoved[0] && interval[0] != toBeRemoved[0] {
          res.append([interval[0], toBeRemoved[0]])
        }
        if minR == toBeRemoved[1] && interval[1] != toBeRemoved[1] {
          res.append([toBeRemoved[1], interval[1]])
        }
      } else {
        res.append(interval)
      }
    }
    return res
  }
}
