/*
 Question - Consecutive Characters
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3518/
 */

class Solution {
  func maxPower(_ s: String) -> Int {
    var s = Array(s), counter = 0, maxx = 0, found : Character = "1"
    for i in 0..<s.count{
      if found == s[i]{
        counter += 1
        maxx = max(maxx,counter)
      }
      else{
        found = s[i]
        counter = 1
      }
    }
    return (maxx != 0) ? maxx : 1
  }
}
