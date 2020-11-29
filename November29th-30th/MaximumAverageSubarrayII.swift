/*
 Question - Maximum Average Subarray II
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/568/week-5-november-29th-november-30th/3547/
 */

class Solution {
  func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var minVal = Double(nums.min()!), maxVal = Double(nums.max()!), prevMid: Double = Double(maxVal), error = 1.0
    while error > 0.00001 {
      var mid: Double = (maxVal + minVal) / 2
      if check(nums, mid, k) {
        minVal = mid
      } else {
        maxVal = mid
      }
      error = abs(prevMid - mid)
      prevMid = mid
    }
    return minVal
  }
  
  private func check(_ nums: [Int], _ mid: Double, _ k: Int) -> Bool {
    var sum = 0.0, prev = 0.0, minSum = 0.0
    for i in 0..<k {
      sum += Double(nums[i]) - mid
    }
    if sum > 0 {
      return true
    }
    for i in k..<nums.count {
      sum += Double(nums[i]) - mid
      prev += Double(nums[i-k]) - mid
      minSum = min(prev, minSum)
      if sum >= minSum {
        return true
      }
    }
    return false
  }
}
