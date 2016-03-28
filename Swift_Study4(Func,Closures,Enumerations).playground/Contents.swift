
//*********************************************   함수


// 상수와 가변 파라메터


//함수의 파라미터는 기본적으로 상수! 그래서 파라미터 앞에 var를 붙여줘야 값을 변수처럼 사용할 수 있다.   ( num : Int ) -> (var num : Int)
func changeNum(var num : Int) -> Int {

    num += 5;
    
    return num
    
}



// inout 키워드

func changeNum(inout num : Int) -> Int {
    
    num += 5;
    
    return num
    
}

var number1 = 5
var number2 = 5


// call by value , call by reference 차이
changeNum(number1)
changeNum(&number2)


print("\(number1)    \(number2)")


//******************************************* 클로저

/*

{ (parameters) -> return type in
statements
}

*/

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {   return s1 > s2 }


let sorted_array = names.sort( { (s1:String ,s2:String) -> Bool in return s1 > s2 } )

print("\(sorted_array)")




//******************************************* 열거형  (Enumerations)

/*
 enum SomeEnumeration {
 // enumeration definition goes here
 }
 
 
 enum CompassPoint {   case North   case South   case East   case West }
 
 enum Planet {   case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune }

*/

enum Directions{ case North; case East; case West; case South }

var directionToHead = Directions.West

directionToHead = .East

switch directionToHead {

    case .North : print("1")
    case .East : print("2")
    case .West : print("3")
    case .South : print("4")
}


//******************************************* 연관 값(Associated Values)

enum Barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)
productBarcode = .QRCode("ABCDEFGHIJKLMNOP")


switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
case .QRCode(let productCode):
    print("QR code: \(productCode).")
}



// 원시값(Raw Values)을 줄 수 있음!

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

//이경우 Venus = 2 , Earth = 3 .... 이렇게 자동 증가 되어 값이 설정됩니다.
enum Planet: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}



