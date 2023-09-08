
/*
 - Time complexity: O(n) - where n is the length of the longer input strings. 
 - Space complexity: O(n) - where n is the length of the longer input strings.  
 */

func oneAway(_ s1: String, _ s2: String) -> Bool {
    if s1 == s2 { return true }

    let a1 = Array(s1)
    let a2 = Array(s2)
    
    let c1 = a1.count
    let c2 = a2.count
    
    let diff = c1 - c2
    
    if abs(diff) > 1 {
        return false
    }
    
    var count = 0
    var i = 0
    var j = 0
    
    while i < c1 && j < c2 {
        if a1[i] != a2[j] {
            count += 1
            
            if count > 1 {
                return false
            }
            
            if diff > 0 {
                i += 1
                continue
            } else if diff < 0 {
                j += 1
                continue                
            }
        }
        
        i += 1
        j += 1
    }
    
    return true
}

