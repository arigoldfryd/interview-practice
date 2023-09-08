/*
 - Time complexity: O(n) 
 - Space complexity: O(n) in the worst case, where the compressed string is the same length as the input string.
 */

func compress(_ str: String) -> String {
    var result = ""
    var counter = 1
    var currentLetter: Character?
    
    for char in str {
        if currentLetter == nil {
            currentLetter = char
            continue
        }
        
        if char == currentLetter {
            counter += 1
        } else {
            result.append("\(currentLetter!)\(counter)")
            
            counter = 1
            currentLetter = char
        }
    }
    
    if let letter = currentLetter {
        result.append("\(currentLetter!)\(counter)")
    }
    
    return result.count < str.count ? result : str
}

