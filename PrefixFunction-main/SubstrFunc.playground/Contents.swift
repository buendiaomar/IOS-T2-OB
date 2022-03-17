import UIKit


var output=calcPrefix(["flower", "flow", "flight"])


func calcPrefix(_ strs: [String]) -> String {

    if strs.isEmpty {
        return ""
    }
    
    if var prefixStr = strs.first {
        
        for index in 1..<strs.count {
            let str = strs[index]
            while str.contains(prefixStr) == false {
                let index = prefixStr.index(prefixStr.startIndex, offsetBy: prefixStr.count - 1)
                prefixStr = String(prefixStr[..<index])
                if prefixStr.count == 0 {
                    return ""
                }
            }
        }
        return prefixStr
    }
    
    return ""
}

print(output)


