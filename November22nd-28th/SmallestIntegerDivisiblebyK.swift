/*
 Question - Smallest Integer Divisible by K
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3543/
 */

class Solution {
  func smallestRepunitDivByK(_ K: Int) -> Int {
    var remainder = 0
    for i in 1...K{
      remainder = (remainder * 10 + 1) % K
      if remainder == 0{
        return i
      }
    }
    return -1
  }
}
