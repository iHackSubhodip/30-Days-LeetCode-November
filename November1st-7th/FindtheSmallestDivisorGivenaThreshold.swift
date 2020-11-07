/*
 Question - Find the Smallest Divisor Given a Threshold
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3521/
 */

class Solution {
  func smallestDivisor(_ nums: [Int], _ threshold: Int) -> Int {
    let numsDouble = nums.map { Double($0)}
    
    var left = 1, right = nums.max()!
    
    while left < right {
      let mid = left + (right - left) >> 1
      let divisor = Double(mid)
      let result = numsDouble.map{Int(ceil($0 / divisor))}.reduce(0) {$0 + $1}
      if result > threshold {
        left = mid + 1
      } else {
        right = mid
      }
    }
    return left
  }
}
