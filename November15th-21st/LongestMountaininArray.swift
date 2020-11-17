/*
 Question - Longest Mountain in Array
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3533/
 */

class Solution {
  func longestMountain(_ A: [Int]) -> Int {
    guard A.count >= 3 else { return 0 }
    var end = 0, result = 0, i = 0
    let n = A.count - 1
    while i < n {
      while i < n, A[i] >= A[i+1] {
        i += 1
      }
      end = i+1
      while end < n, A[end] < A[end+1] {
        end += 1
      }
      while end < n, A[end] > A[end+1] {
        end += 1
        result = max(result, end-i+1)
      }
      i = end
    }
    return result
  }
}
