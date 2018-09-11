//: [Previous](@previous)
/*:
 # Conditional Statements
 */

/*:
 ---
 ## if Statements
 ---
 */
/***************************************************
 if <#condition#> {
 <#code#>
 }
 
 if <#condition#> {
 <#statements#>
 } else {
 <#statements#>
 }
 
 - condition 은 Bool 값 (true, false)
 ***************************************************/

// if

var temperatureInFahrenheit = 30

if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
}


// if - else

temperatureInFahrenheit = 40

if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else {
  print("It's not that cold. Wear a t-shirt.")
}


// if - else if - else

temperatureInFahrenheit = 90

if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
  print("It's really warm. Don't forget to wear sunscreen.")
} else {
  print("It's not that cold. Wear a t-shirt.")
}


// if - else if

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
  print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
  print("It's really warm. Don't forget to wear sunscreen.")
}

/*:
 ---
 ### Question
 - if ~ else if   /  if 문을 2개 하는 것과 차이점?
 - if ~ else if 만 있을 때 else 없이 동일하게 처리하려면?
 ---
 */

// Logical And Operator
if (temperatureInFahrenheit > 0) && (temperatureInFahrenheit % 2 == 0) {
}

// Logical And Operator
if temperatureInFahrenheit > 0, temperatureInFahrenheit % 2 == 0 {
    print("오호")
}

var total : String = "abcde"

/*:
 ---
 ## switch Statements
 ---
 */
/***************************************************
 switch <#value#> {
 case <#value 1#>:
     <#respond to value 1#>
 case <#value 2#>,
      <#value 3#>:
     <#respond to value 2 or 3#>
 default:
     <#otherwise, do something else#>
 }
 
 - switch 문은 가능한 모든 사례를 반드시 다루어야 함 (Switch must be exhaustive) 
 ***************************************************/

print("\n---------- [ switch statements ] ----------\n")

let alphabet: Character = "a"

switch alphabet {
case "a":
  print("The first letter of the alphabet")
case "z":
  print("The last letter of the alphabet")
default:
  // Invalid, the case has an empty body
  break
//  print("Some other character")
}


// Interval Matching

print("\n---------- [ Interval Matching ] ----------\n")

let approximateCount = 30

switch approximateCount {
case 0...50:
  print("0 ~ 50")
case 51...100:
  print("51 ~ 100")
default:
  print("Something else")
}


// Compound Cases

let someCharacter: Character = "e"

switch someCharacter {
case "a", "e", "i", "o", "u":
  print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
  print("\(someCharacter) is a consonant")
default:
  print("\(someCharacter) is not a vowel or a consonant")
}


/*:
 ---
 ### Question
 - Compound Case 를 if 문으로 변경하기
 ---
 */

// value binding

let stillAnotherPoint = (9, 0)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
  print("On an axis, \(distance) from the origin")
default:
  print("Not on an axis")
}


// where clause

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
    //case (let x, let y ) 밑 이랑 같음
case let (x, y) where x == y:
  print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
  print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
  print("(\(x), \(y)) is just some arbitrary point")
}


// Without default case

let isTrue = true
type(of: isTrue)

switch isTrue {
case true:
  print("true")
case false:
  print("false")
}


// fallthrough

print("\n---------- [ fallthrough ] ----------\n")
let integerToDescribe = 1
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
  description += " a prime number, and also"
  fallthrough
default:
  description += " an integer."
}
print(description)


/*:
 ---
 ## Early Exit
 - guard statement
 ---
 */
//func update(age: Int) {
//  if 0...100 ~= age {
//    print("OK")
//  }
//}
//
//update(age: 10)


/***************************************************
 if <#condition#> {
 <#code#>
 }
 
 guard <#condition#> else {
 <#code#>
 }
 ***************************************************/

func update1(age: Int) {
  guard 0...100 ~= age
//    , age == 100
    else { return }
  print("Pass")
}
update1(age: 2)
update1(age: -1)
update1(age: 100)


/*:
 ---
 ## Question  (switch 를 이용해서 구현)
 - 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 - 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 - 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 - 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
 - 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
 - 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 ---
 */
func total1(x:Int,y:Int)-> Int
{
    return x * 10 + y
}
total1(x: 3, y: 5)

func total2(x:String,y:String)-> Bool
{
    return x == y
}

var a = "a"
var b = "b"
total2(x: "a", y: "a")

func scoreGrade(x:Double)->String {
    switch x {
    case 4.5:
        return "A+"
    case 4.0..<4.5:
        return "A"
    case 3.5..<4.0:
        return "B+"
    case 3.0..<3.5:
        return "B"
    case 2.5..<3.0:
        return "C+"
    case 2.0..<2.5:
        return "C"
    case 1.5..<2.0:
        return "D+"
    case 1.0..<1.5:
        return "D"
    default:
        return "F"
    }
}
scoreGrade(x: 0)

//세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
func value1(x:Double,y:Double,z:Double)->Bool {
    let total = x * y * z
    switch total {
    case 0...:
        return true
    case ..<0:
        return false
    default:
        print("몰라")
        return false
    }
}

//특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
func value2(x:Int)->String{
    switch x {
    case 1:
        return "Jan"
    case 2:
        return "Feb"
    case 3:
        return "Mar"
    case 4:
        return "Apr"
    case 5:
        return "May"
    case 6:
        return "Jun"
    case 7:
        return "Jul"
    case 8:
        return "Aug"
    case 9:
        return "Sep"
    case 10:
        return "Oct"
    case 11:
        return "Nov"
    case 12:
        return "Dec"

    default:
        return "잘못입력"
        
    }
}
////윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
//func 윤년(){
//
//    for value in 0...2000{
//        print("\(value)년은")
//        if(value >)
//    }
//}
func 윤년() {
    for item in 1...4000 {
        if item % 4 == 0 {
            if item % 100 == 0 {
                if item % 400 ==  0 {
                    print("\(item)년은 윤년입니다.)")
                    continue
                }
                //print("\(item)년은 윤년이 아닙니다.")
                continue
            }
           print("\(item)년은 윤년입니다.)")
        }
    }
}

윤년()
//: [Next](@next)
