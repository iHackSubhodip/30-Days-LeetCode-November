/*
 Question - Longest Substring with At Least K Repeating Characters
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3544/
 */

class Solution {
  func longestSubstring(_ s: String, _ k: Int) -> Int {
    guard s.count >= k else { return 0 }
    var map = [Character: Int]()
    for c in s { map[c, default: 0] += 1 }
    var usedMap = [Character: Int](), answer = 0, currentLength = 0 , currentString = ""
    for c in s{
      if map[c]! >= k{
        currentLength += 1
        usedMap[c, default: 0] += 1
        currentString += String(c)
      }else{
        answer = max(longestSubstring(currentString, k), answer)
        for (key, value) in usedMap{
          map[key] = map[key]! - value
        }
        currentLength = 0
        currentString = ""
        usedMap.removeAll()
      }
    }
    return max(answer, currentLength)
  }
}
