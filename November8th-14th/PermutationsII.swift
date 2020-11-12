/*
 Question - Permutations II
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3528/
 */

class Solution {
  func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = [], candidates: [Int] = []
    var visited: [Bool] = [Bool](repeating: false, count: nums.count)
    permuteHelper(&result, &candidates, &visited, nums.sorted())
    return result
  }
  
  func permuteHelper(_ result: inout [[Int]],_ candidates: inout [Int],_ visited: inout [Bool],_ nums: [Int]){
    if candidates.count == nums.count{
      result.append(candidates)
      return
    }
    
    for i in 0..<nums.count{
      if visited[i] || (i > 0 && nums[i-1] == nums[i] && !visited[i-1]){ continue }
      visited[i] = true
      candidates.append(nums[i])
      permuteHelper(&result,&candidates,&visited, nums)
      visited[i] = false
      candidates.removeLast()
    }
  }
  //O(n^n), O(n)
}
