/*
 Question - Meeting Rooms
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3515/
 */

class Solution {
  func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
    guard intervals.count > 1 else { return true }
    var intervalsSorted = intervals.sorted(){ (_ a: [Int],_ b: [Int]) -> Bool in
      return a[0] < b[0]
    }
    
    for i in 1..<intervals.count{
      if intervalsSorted[i][0] < intervalsSorted[i-1][1]{
        return false
      }
    }
    return true
  }
}
