/*
 Question - Two Sum Less Than K
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3523/
 */

class Solution {
  func twoSumLessThanK(_ A: [Int], _ K: Int) -> Int {
    guard A.count > 1 else { return -1 }
    
    var result = -1
    for i in 0..<A.count-1 {
      let left = A[i]
      for j in i+1..<A.count where left + A[j] < K {
        let right = A[j]
        result = max(result, left + right)
      }
    }
    return result
  }
}
