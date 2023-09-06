/*
    - Time complexity: O(n) where n is the length of the input s1.
    - Space complexity: O(1) because the dictionary cannot contain more than the number of letters that are allowed in the alphabet (plus digits and other characters).
 */
func checkPermutation(_ s1: String, _ s2: String) -> Bool {
    guard s1.count == s2.count else { return false }
    
    var letters = [Character: Int]()
    
    for char in s1 {
        letters[char, default: 0] += 1
    }
    
    for char in s2 {
        if let count = letters[char], count > 0 {
            letters[char] = count - 1
         } else {
            return false
         }
    }
    
    return true
}

