/*
 Question - Decode String
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3536/
 */

class Solution {
  func decodeString(_ s: String) -> String {
    var stack = [(String, Int)]()
    var result = ""
    var num = 0
    
    for char in s {
      switch char {
      case "[":
        stack.append((result, num))
        result = ""
        num = 0
      case "]":
        let (prev, num) = stack.removeLast()
        result = prev + String(repeating: result, count: num)
      case _ where char.isNumber:
        num *= 10
        num += Int(String(char))!
      default:
        result += String(char)
      }
    }
    
    return result
  }
  
}
