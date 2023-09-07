/*
 - Time complexity: O(n) where n is the length of the string.
 - Space complexity: O(1) - the limit is the number of letters in the dictionary, the length of the input doesn't affect the space complexity. 
 */

func isPalindromePermutation(_ str: String) -> Bool {    
    var balance = [Character: Int]()
    
    for char in str {
        if char == " " {
            continue
        }
        
        balance[char, default: 0] += 1
    }
    
    var oddRepetions = 0
    
    for count in balance.values {
        if count % 2 != 0 {
            oddRepetions += 1
        }
        
        if oddRepetions > 1 {
            return false
        }
    }
        
    return true
}

