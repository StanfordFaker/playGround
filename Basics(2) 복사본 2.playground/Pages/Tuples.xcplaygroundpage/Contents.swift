//: [Previous](@previous)
/*:
 ---
 # Tuples
 ---
 */
/*:
 ---
 ## Unnamed Tuple
 ---
 */
let number: Int = 10

let threeNumbers: (Int, Int, Int) = (1, 2, 5)
type(of: threeNumbers)

threeNumbers

threeNumbers.0
threeNumbers.1
threeNumbers.2


var threeValues: (Int, Double, String) = (10,  100.0,  "이름")
type(of: threeValues)

threeValues

threeValues.0 = 5
threeValues


/*:
 ## Decomposition
 */

let numbers = threeNumbers
numbers
numbers.0
numbers.1


let (first, second, third) = threeNumbers// 딕셔너리 이넘
first
second


// wildcard pattern

let (_, second1, third1) = threeNumbers
second1
third1


/*:
 ---
 ## Named Tuple
 ---
 */

let iOS = (language: "Swift", version: "4")

//let iOS: (language: String, version: String) = (language: "Swift", version: "4")
//let iOS: (language: String, version: String) = ("Swift", "4")
//let iOS = (language: "Swift", version: "4")

iOS.0
iOS.1

iOS.language
iOS.version


func 튜플(a: Int, b: (Int, Int)) -> (first: Int, second: Int) {
  return (a + b.0, a + b.1)
}

let result = 튜플(a: 10, b: (20, 30))
result.first
result.second

/*:
 ## Comparison Operators
 * Tuple 은 7개 미만 요소에 대한 비교 연산자가 포함되어 있음
 * 7개 이상의 요소를 비교하기 위해서는 비교 연산자를 직접 구현해야 함
 */
//var something1: (Int, Int, Int, Int, Int, Int) = (1,2,3,4,5,6)
//var something2: (Int, Int, Int, Int, Int, Int) = (1,2,3,4,5,6)
//something1 == something2

//0번쨰 우선비교, 첫번째 똑같으면 두뻔쨰를 비교함, 둘다 같으면 트루
(1, "zebra") < (2, "apple")   // true or false ? true
(3, "apple") < (3, "bird")    // true or false ? true
(4, "dog") == (4, "dog")      // true or false ? true


/***************************************************
 Q. 다음 튜플 연산에 대한 결과는?
 
 - ("1", 1) < ("3.14", 99) 트루
 
 - ("일", 1) > ("이", 2.0)
 초성중성 종성
 - (1, "zebra") < ("2", "apple") 타입이 같아야 비교
 
 - ("blue", -1) < ("purple", 1)

 - ("blue", false) < ("purple", true) bool 대소비교안됨
 ***************************************************/



/*:
 ---
 ## Tuple Matching
 ---
 */

let somePoint = (1, 1)
//꽤많이 쓰임
switch somePoint {
case (0, 0):
  print("\(somePoint) is at the origin")
case (_, 0):
  print("\(somePoint) is on the x-axis")
case (0, _):
  print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
  print("\(somePoint) is inside the box")
default:
  print("\(somePoint) is outside of the box")
}


/*:
 ## Dictionary Enumeration
 */

let fruits = ["A": "Apple", "B": "Banana", "C": "Cherry"]

for (a, b) in fruits {
  print(a,b)
}

for element in fruits {
  // 어떤 식으로 출력해야 할까요?
    //print(element.1)
    
}



//: [Next](@next)
