//: Playground - noun: a place where people can play

var str = "Hello, playground"



/**                                                                 딕셔너리(Dictionaries)

스위프트의 딕셔너리는 특정한 타입의 키와 그에 따른 값을 저장한다.

**/


// full form
var airports : Dictionary<String ,String>
= ["YYZ" : "Toronto Person", "DUB" : "Dublin"]

//short form

var number : [Int : String] = [1 : "one", 2: "two"]

var city = [01 : "Seoul" , 053 : "Daegu"]


//개수 확인

print("The airports dictionary contains \(airports.count) items")

// 비었는지 확인

if airports.isEmpty {
    
    print(" The airports dictinary is empty")
    
}

// 추가

airports["LHR"] = "London"

// 수정

airports["LHR"] = "London Heathrow"

// 수정 : 메소드를 사용

// return 값은 밸류 타입에 해당하는 Optinal 값

if var oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    
    print("The old value for DUB was \(oldValue).")
    
}

var aa = airports["DUB"]

print("The update value is \(aa)")
print("The update value is \(aa!)")

//삭제

airports["DUB"] = nil

if let removedValue = airports.removeValueForKey("DUB") {
    
    print("Teh removed airport's name is \(removedValue)")
}


//빈 딕셔너리 만들기

var namesOfInteagers = [Int : String]()


// 이미 값이 있을때

namesOfInteagers[16] = "sixteen"

namesOfInteagers = [:]





