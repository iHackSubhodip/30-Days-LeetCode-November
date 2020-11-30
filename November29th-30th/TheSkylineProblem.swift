/*
 Question - The Skyline Problem
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/568/week-5-november-29th-november-30th/3549/
 */

class Solution {
  func getSkyline(_ buildings: [[Int]]) -> [[Int]] {
    var res = [[Int]]()
    if buildings.count == 0 {
      return res
    }
    
    if buildings.count == 1 {
      let building = buildings[0]
      res.append([building[0], building[2]])
      res.append([building[1], 0])
      return res
    }
    
    let mid = buildings.count / 2
    let leftRes = getSkyline(Array(buildings[0 ..< mid]))
    let rightRes = getSkyline(Array(buildings[mid ..< buildings.count]))
    return merge(leftRes, rightRes)
    
  }
  
  func merge(_ lSkyline: [[Int]], _ rSkyline: [[Int]]) -> [[Int]] {
    var res = [[Int]]()
    
    var l = 0
    var r = 0
    
    var lY = 0
    var rY = 0
    var curY = 0
    
    while l < lSkyline.count && r < rSkyline.count {
      var x = 0
      if lSkyline[l][0] < rSkyline[r][0] {
        x = lSkyline[l][0]
        lY = lSkyline[l][1]
        l += 1
      } else {
        x = rSkyline[r][0]
        rY = rSkyline[r][1]
        r += 1
      }
      
      let maxY = max(lY, rY)
      if curY != maxY {
        updateRes(&res, maxY, x)
        curY = maxY
      }
    }
    
    
    appendRemaining(lSkyline, l, curY, &res)
    appendRemaining(rSkyline, r, curY, &res)
    return res
  }
  
  func updateRes(_ res: inout [[Int]], _ y: Int, _ x: Int) {
    if res.count == 0 || res.last![0] != x {
      res.append([x, y])
    } else {
      res[res.count-1][1] = y
    }
  }
  
  func appendRemaining(_ list: [[Int]], _ p: Int, _ curY: Int, _ res: inout [[Int]]) {
    var ptr = p
    var cur = curY
    while ptr < list.count {
      let x = list[ptr][0]
      let y = list[ptr][1]
      if y != cur {
        updateRes(&res, y, x)
        cur = y
      }
      ptr += 1
    }
  }
}
