//: Playground - noun: a place where people can play


var str = "Hello, playground"

print("Hello,world")


/**                                                                             타입
**/


//상수는 let 키워드를 사용하고  변수선언은 var 을 사용합니다.
let Constats = 10
var Variables = 20
var x = 0.0 , y = 0.0 , z = 2.0
let string = "Happy ori"


//타입명시(Type Annotations)
//상수나 변수를 선언할때 바로 초기화를 할경우 알아서 설정이됩니다.
var welcomeHappyori : String


//타입변환
let three=3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine


/**                                                                         튜플(Tuples)
**/


//튜플은 여러값들을 하나의 값으로 묶어 줍니다.
// 여러 값은 각각 동일한 타입일 필요도 없습니다.  이름을 지어줄 수도 있습니다.

let http404Error = (404, "Not Found")
let http200Status = (statusCode: 200, description: "OK")


let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// prints "The status code is 404"
print("The status message is \(statusMessage)")


//튜플중 몇개만 필요하다면  "_" 로 무시할 부분을 처리하면 됩니다.
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// prints "The status code is 404"


print("The status code is \(http404Error.0)")
// prints "The status code is 404"
print("The status message is \(http404Error.1)")
// prints "The status message is Not Found"
print("The status code is \(http200Status.statusCode)")
// prints "The status code is 200"
print("The status message is \(http200Status.description)")
// prints "The status message is OK"


/** Optionals (nil 이 될 수 있고 없고의 차이)

Swift 에서의 nil 은 Objective-C 에서의 nil 과 다르다.

nil of Swift : 값이 없다  in 모든타입 (Reference or Value Type)
nil of Objective-C : 값이 없다 in Reference Type
즉, Swift에선 어떤 타입이든 값이 없으면  nil 이다.

**/


// optional type.
var optionalString : String?   // nil 로 초기화

// non-optional type.
var nonOptionalString : String // nil 이 될 수 없음. 초기화 필요



// 여기서 중요한점! String? 와 String은 다른거!!


//! (forced-unwrapping operator) 이건 값을 드러나게 만든다

var text1 : String?
var test2 : String



//if문과 강제 언랩핑(If Statements and Forced Unwrapping)

if optionalString != nil {
    //강제 언랩핑!!
    print("convertedNumber has an integer value of \(optionalString!).")
    
}

/*
배열(Arrays)



스위프트에서 배열은 특정 변수 타입만 저장 할 수 있습니다..
objective-c 의 NSArray 와 NSMutableArray 클래스와 다릅니다. 따라서 Int 형 타입 배열을 생성했다면 int 외에는 저장이 불가능합니다.
*/

var shoppingList : [String] = ["Eggs","Milk"]

var shoppingList2 = ["coffee","water"]


//item 개수 확인

print("The shopping list contains \(shoppingList.count) item.")

//배열이 비었는지 확인

if shoppingList.isEmpty {
    
    print("The shopping list is empty.")
    
} else {
    
    print("The shopping list is not empty.")
    
}

//배열 마지막에 추가
shoppingList.append("Flour")

shoppingList += ["Baking Powder"]

shoppingList += ["Chocolate Spread", "cheese", "Butter"]


var firstItem = shoppingList[0]

shoppingList[0] = "six eggs"


// 법위를 지정해서 값을 넣을 수도 있습니다. 바꾸려는 범위가 실제 범위와 달라도 됩니다.

shoppingList[4...6] = ["Bananas" , "Apples"]

let mapleSyrup = shoppingList.removeAtIndex(0)
let apple = shoppingList.removeLast()

//for in

for item in shoppingList {
    
    print(item)
    
}


// EnumerateSequence 를 사용한 배열 돌리기 (튜플로 반환)


for (index, value) in EnumerateSequence(shoppingList) {
    
    print("Item \(index + 1): \(value)")
    
}


//배열의 생성과 초기화 Creating and Initializing an Array
//초기값 할당 없이 특정 타입을 가진 빈 배열 만들기

var someInts = [Int]()



















