//: Playground - noun: a place where people can play


var str = "Hello, playground"


/*                                                          함수(Func)

*/

// 하나의 반환값

func HappyOri(myName : String) -> String {
    let greeting = "Happy" + myName
    return greeting
}

// 복수의 반환값

func minMax(array: [Int]) -> (min: Int, max: Int) {
    
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax([8, -6, 2, 109, 3, 71])

print("min is \(bounds.min) and max is \(bounds.max)")

// prints "min is -6 and max is 109"


// 외부 파라미터 이름(Extrernal Prameter Names)


// 내부 파라미터 이름

func join(s1: String, s2: String, joiner: String) -> String {
    
    return s1 + joiner + s2
    
}

// 외부 파라미터 이름

func join(string s1: String, toString s2: String, withJoiner joiner: String)
    
    -> String {
        
        return s1 + joiner + s2
        
}

//단축 외부 파라미터 이름   (#이 안먹힌다 내부파라미터랑 합쳐진듯)

func join2(string: String, toString: String, withJoiner: String) -> String {
    
    return string + withJoiner + toString
    
}


var a: String = "aa"
var b: String = "bb"
var c :String = "cc"


join(a, s2:b,joiner: c)

join(string: a, toString: b, withJoiner: c)

join2(a, toString: b, withJoiner: c)



// 기본 파라미터 값

func plus(num : Int = 0 , num2 : Int = 0 ) -> Int {
    
    return num + num2
    
}


plus(2, num2: 2)
//return is 4

plus()
//return is 0




//****** 가변 개수 파라미터

func arithmeticMean(numbers: Double...) -> Double {

    var max_num : Double = 0;
    
    for (index,number) in EnumerateSequence(numbers) {
        
        if index == 0 {
            max_num=number }
        
        else {
            if max_num < number { max_num = number }
        }
        
    }
    
    return max_num
}



arithmeticMean(1,2,3,400,5,6)

arithmeticMean(10.5,100.5,20)







