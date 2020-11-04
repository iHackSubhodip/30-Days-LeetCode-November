/*
 Question - Minimum Height Trees
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/564/week-1-november-1st-november-7th/3519/
 */

class Solution {
  func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
    if edges.isEmpty { return [0] }
    var dict1 = [Int: [Int]](), dict2 = [Int: Int]()
    for edge in edges {
      dict1[edge[0], default: [Int]()].append(edge[1])
      dict1[edge[1], default: [Int]()].append(edge[0])
      dict2[edge[0], default: 0] += 1
      dict2[edge[1], default: 0] += 1
    }
    while dict2.reduce(into: Int(0), { $0 = max($0, $1.1) }) > 1 {
      for i in dict2.reduce(into: [Int](), { if $1.1 == 1 { $0.append($1.0) } }) {
        for j in dict1[i, default: []] where dict2[j] != nil {
          dict2[j, default: 0] -= 1
        }
        dict1[i] = nil
        dict2[i] = nil
      }
    }
    return dict2.reduce(into: [Int](), { $0.append($1.0) })
  }
}
