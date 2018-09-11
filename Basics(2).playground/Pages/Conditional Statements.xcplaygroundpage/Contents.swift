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
}

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
let integerToDescribe = 5
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
func plus(_ a: Int, _ b: Int) {
    print(String(a) + String(b))
}
plus(1, 5)

func characterOX(_ a: String, _ b: String) -> Bool {
    let character = (a, b)
    switch character {
    case let(x, y) where x == y:
        print("a와 b는 같다")
        return true
    case let(x, y) where x != y:
        print("a와 b는 같지 않다")
        return false
    default:
        return false
    }
}
print(characterOX("1", "1"))


func grade(_ a: Double) {
    switch a {
    case 4.5:
        print("A+")
    case 4.0..<4.5:
        print("A")
    case 3.5..<4.0:
        print("B+")
    case 3.0..<3.5:
        print("B")
    case 2.5..<3.0:
        print("C+")
    case 2.0..<2.5:
        print("C")
    default:
        print("F")
    }
}
grade(4.0)

func mutipleABC(_ a: Int, _ b: Int, _ c: Int) {
    let mtp = (a, b, c)
    switch mtp {
    case let(x, y, z) where (x * y * z) > 0 :
        print("\(a), \(b), \(c) 의 곱은 양수이다")
    case let(x, y, z) where (x * y * z) < 0 :
        print("\(a), \(b), \(c) 의 곱은 음수이다")
    default:
        print("제대로 입력바람")
        break
    }
}
mutipleABC(4, 1, 3/9)

func month(_ a: Int) {
    switch a {
    case 1:
        print("1월은 Jan")
    case 2:
        print("2월은 Feb")
    case 3:
        print("3월은 Mar")
    case 4:
        print("4월은 Apr")
    case 5:
        print("5월은 May")
    case 6:
        print("6월은 Jun")
    case 7:
        print("7월은 Jul")
    case 8:
        print("8월은 Aug")
    case 9:
        print("9월은 Spt")
    case 10:
        print("10월은 Out")
    case 11:
        print("11월은 Nov")
    case 12:
        print("12월은 Dec")
    default:
        break
    }
    
    
    
    let mthAry: Array = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "spt", "out", "nov", "dec"]

    print("\(a)달은 \(mthAry[a - 1])")

}
month(1)


// 2016년 윤년

func leapYear(_ a: Int) {
    
//    guard ((a % 4) == 0) != ((a % 100) == 0) || ((a % 400) == 0) else { return }
//        print("\(a)년은 윤년입니다")
    
    if ((a % 4) == 0) != ((a % 100) == 0) || ((a % 400) == 0) {
        print("\(a)년은 윤년입니다")
    } else {
        print("\(a)년은 윤년이 아닙니다")
    }
    
}

leapYear(2400)




//: [Next](@next)
