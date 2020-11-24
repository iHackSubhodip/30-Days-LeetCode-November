/*
 Question - Basic Calculator II
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3542/
 */

class Solution {
  func calculate(_ s: String) -> Int {
    var stack: [Int] = [], str = Array(s + "+"), num = 0, sign: Character = "+"
    for char in str{
      if char >= "0" && char <= "9"{
        num = num * 10 + Int(String(char))!
      }else if char == "+" || char == "-" || char == "*" || char == "/"{
        if sign == "+" || sign == "-"{
          stack.append((sign == "-" ? -1 : 1) * num)
          num = 0
        }else if sign == "*" || sign == "/"{
          let n = stack.removeLast()
          stack.append(sign == "*" ? n * num : n / num)
          num = 0
        }
        sign = char
      }
    }
    return stack.reduce(0, +)
  }
}
