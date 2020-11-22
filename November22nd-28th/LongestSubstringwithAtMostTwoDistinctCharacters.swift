/*
 Question - Longest Substring with At Most Two Distinct Characters
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3539/
 */

class Solution {
  func lengthOfLongestSubstringTwoDistinct(_ s: String) -> Int {
    var dict = [Character: Int](), l = 0, res = 0, arr = Array(s)
    
    for i in 0..<arr.count {
      dict[arr[i], default: 0] += 1
      while dict.count > 2 {
        dict[arr[l]] = dict[arr[l]]! - 1
        if dict[arr[l]]! == 0 {
          dict[arr[l]] = nil
        }
        l += 1
      }
      res = max(res, i-l+1)
    }
    return res
  }
}
