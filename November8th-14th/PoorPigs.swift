/*
 Question - Poor Pigs
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/565/week-2-november-8th-november-14th/3530/
 */

class Solution {
  func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
    let states = minutesToTest / minutesToDie + 1
    let _buckets = log(Double(buckets))
    let _states = log(Double(states))
    return Int(ceil(_buckets / _states))
  }
}
