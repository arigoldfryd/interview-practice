
/*
 - Time complexity: O(n)
 - Space complexity: (c) where c is the unique characters in the string.
 */
func isUnique(_ str: String) -> Bool {
    var charSet = Set<Character>()
    
    for char in str {
        if charSet.contains(char) {
            return false
        }
        
        charSet.insert(char)
    }
        
    return true
}

/*
- Time complexity: O(n^2). 
- Space complexity: O(1) because no additional structure is used.
 */
func isUniqueWithoutDataStructure(_ str: String) -> Bool {
    let arr = Array(str)
    let n = arr.count
    
    for i in 0..<n {
        for j in i+1..<n {
            if arr[i] == arr[j] {
                return false
            }
        }
    }
    
    return true
}

