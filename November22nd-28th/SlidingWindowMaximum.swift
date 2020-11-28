/*
 Question - Sliding Window Maximum
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3546/
 */

class Solution {
  func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    let n = nums.count
    var leftMax = Array(repeating: 0, count: n), rightMax = Array(repeating: 0, count: n), result: [Int] = []
    leftMax[0] = nums[0]
    for i in 1..<n{
      leftMax[i] = i % k == 0 ? nums[i] : max(nums[i], leftMax[i-1])
    }
    
    rightMax[n-1] = nums[n-1]
    
    for i in (0..<n-1).reversed(){
      rightMax[i] = i % k == 0 ? nums[i] : max(rightMax[i+1], nums[i])
    }
    
    for i in 0..<n-k+1{
      result.append(max(rightMax[i], leftMax[i+k-1]))
    }
    return result
  }
}
