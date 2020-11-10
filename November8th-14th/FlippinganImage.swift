/*
 Question - Flipping an Image
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3526/
 */

class Solution {
  func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    return A.map{a in
      return a.reversed().map{c in
        return c == 1 ? 0 : 1
      }
    }
  }
}
