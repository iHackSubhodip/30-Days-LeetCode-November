/*
 Question - Mirror Reflection
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3534/
 */

class Solution {
  func mirrorReflection(_ p: Int, _ q: Int) -> Int {
    var p = p, q = q
    while p%2 == 0 && q%2 == 0{
      p /= 2
      q /= 2
    }
    
    if p%2 == 0{
      return 2
    }else if q%2 == 0{
      return 0
    }else{
      return 1
    }
  }
}
