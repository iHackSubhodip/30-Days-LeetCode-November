/*
 Question - Search in Rotated Sorted Array II
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/566/week-3-november-15th-november-21st/3537/
 */

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Bool {
    if nums.count == 0 {
      return false
    }
    
    var left = 0
    var right = nums.count - 1
    var middle = 0
    
    while left < right {
      middle = (left + right) / 2
      if nums[middle] == target {
        return true
      }
      if nums[middle] > nums[right] {
        if nums[middle] > target && nums[left] <= target {
          right = middle
        } else {
          left = middle + 1
        }
      } else if nums[middle] < nums[right] {
        if nums[middle] < target && nums[right] >= target {
          left = middle + 1
        } else {
          right = middle
        }
      } else {
        right -= 1
      }
    }
    
    return nums[left] == target ? true : false
  }
}
