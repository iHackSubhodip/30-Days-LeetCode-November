/*
 Question - Merge Intervals
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3535/
 */

class Solution {
  func merge(_ intervals: [[Int]]) -> [[Int]]{
    guard intervals.count > 1 else { return intervals }
    var sortedIntervals = intervals.sorted { $0[0] < $1[0] }, result: [[Int]] = []
    result.append(sortedIntervals[0])
    sortedIntervals.removeFirst()
    while !sortedIntervals.isEmpty{
      let lastResult = result.last!, firstInterval = sortedIntervals.first!
      sortedIntervals.removeFirst()
      if firstInterval[0] <= lastResult[1]{
        result.removeLast()
        result.append([lastResult[0], max(lastResult[1], firstInterval[1])])
      }else{
        result.append(firstInterval)
      }
    }
    return result
  }
}
