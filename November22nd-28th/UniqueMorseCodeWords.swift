/*
 Question - Unique Morse Code Words
 Link - > https://leetcode.com/explore/featured/card/november-leetcoding-challenge/567/week-4-november-22nd-november-28th/3540/
 */

class Solution {
  func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let morse: [Character : String] = ["a": ".-", "b": "-...", "c": "-.-.", "d": "-..", "e": ".", "f": "..-.", "g": "--.", "h": "....", "i": "..", "j": ".---", "k": "-.-", "l": ".-..", "m": "--", "n": "-.", "o": "---", "p": ".--.", "q": "--.-", "r": ".-.", "s": "...", "t": "-", "u": "..-", "v": "...-", "w": ".--", "x": "-..-", "y": "-.--", "z": "--.."]
    
    return words.reduce(into: Set<String>()) {
      let transform = $1.reduce(into: "") { $0 += morse[$1] ?? "" }
      $0.insert(transform)
    }.count
  }
}
