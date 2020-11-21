/*
 Question - Numbers At Most N Given Digit Set
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3538/
 */

class Solution {
  func atMostNGivenDigitSet(_ D: [String], _ N: Int) -> Int {
    let str_N = String(describing: N)
    let count_D = D.count
    let count_N = str_N.count
    var countResult = [Int](repeating: 0, count: count_N + 1)
    countResult[count_N] = 1
    let range = 0...count_N-1
    let startIndex = str_N.startIndex
    for index in range.reversed(){
      let str_indexed = str_N.index(startIndex, offsetBy: index)
      for str_d in D{
        if Int(String(str_d))! < Int(String(str_N[str_indexed]))!{
          countResult[index] += count_D.power(k: count_N - index - 1)
        }
        else if (Int(String(str_d))! == Int(String(str_N[str_indexed]))!){
          countResult[index] += countResult[index + 1]
        }
      }
    }
    for i in 1..<count_N {
      countResult[0] += count_D.power(k: i)
    }
    return countResult[0]
  }
}


extension Int{
  func power(k rhs: Int) -> Int{
    var k = rhs
    var result = 1
    while k > 0 {
      result *= self
      k -= 1
    }
    return result
  }
}
