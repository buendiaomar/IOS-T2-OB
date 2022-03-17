import UIKit

var greeting = "Hello, playground"

// Function and clousures

func greet (person:String, day:String) ->String {
    
    return "Hello \(person), today is \(day)"
        
}
greet(person: "John", day: "Wednesday")

func greeting(_ person:String, on day:String) -> String {
    return "Hello \(person), today is \(day)"
}
greeting("Nate", on: "Saturday")

func calcularS(scores: [Int])->(min:Int, max:Int, sum:Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max=score
        }else if score < min {
            min=score
        }
        sum+=score
    }
    return(min,max,sum)
}

let calcularSS = calcularS(scores: [5,2,4,5,100,8,9])
print(calcularSS.sum)






//Chalenge Function


func calcIndex(nums: [Int], input: Int)->(indez1:Int,index2:Int){


    var index1 = 0
    var index2 = 0
    
    loopOne: for i in 0..<nums.count {
            
        index2=1
            
            for j in 1..<nums.count
            {
            
                if nums[i]+nums[j]==input && i != j
                {
                    break loopOne
                }
                 index2+=1
            }
           index1+=1
    }
    return (index1,index2)
}

let omar = calcIndex(nums: [2,7,11,15], input: 9)
print(omar)









//Questionay



//What is the difference between var and let?

/* Bot are used to create variables
 let helps you create immutable variables
 var helps you to create mutable variables
*/


let q1:Int=1
//What is an optional?

/*
 A type that represents either a wrapped value or nil, the absence of a value.
 */

let q2:Int=2
//What is optional chaining vs optional binding?

/*
 Optional chaining:  doesn't allows an entire block of logic to happen the same way every time
 
 Optional binding:  allows an entire block of logic to happen the same way every time.
 */

let q3:Int=3
//What are the different ways to unwrap an optional? How do they work?
//Are they safe?

/*
 There are seven ways to unwrap an optional
 
 1 force->                      let a:String = x!
 
 2 Implicitly unwrapped ->      var a=x!
 
 3 Optional binding->           if let a = x {
                                    print("x was successfully unwrapped and is = \(a)")
                                }
 
 4 Optional chaining->          let a = x?.count
 
 5 Nil coalescing operator->    let a = x ?? ""
 
 6 Guard statement->            guard let a = x else {
                                    return
                                }
 
 7 Optional pattern->           if case let a? = x {
                                            print(a)
                                }
 
 1 and 2 are unsafe
 */

let q4:Int=4
//What is a closure?

/*
 Clausures are anonimous functions without a name
 Can be a type of storage for values
 Can save var and lets
 */










