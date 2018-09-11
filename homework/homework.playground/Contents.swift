//이름을 입력 값으로 받아서 출력하는 함수

func getname(name : String) {
    print(name)
}

getname(name : "yangwoo")

//나이를 입력 값으로 받아서 출력하는 함수

func getage(age : Int) {
    print(age)
}

getage(age: 37)

//이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func nameage(name2 : String, age2 : String) -> String {
    return("I`m " + name2 + "!, and " + age2 + " years old")
}
nameage(name2: "yangwoo", age2: "37")

//정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func numdouble(num : Int) ->Int {
    return(num * 2)
}
numdouble(num : 4)

//정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func num2doubled(num1 : Int, num2 : Int = 10) -> Int {
    return(num1 * num2)
}

num2doubled(num1: 20)

//4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수

func averageScore(score1: Double, score2: Double, score3: Double, score4: Double) -> Double {
    let sum = score1 + score2 + score3 + score4
    return sum / 4
}
averageScore(score1: 33.3, score2: 44.4, score3: 55.5, score4: 66.6)

func averageScore(scores: Double...) -> Double {
    var sum = 0.0
    for score in scores {
        sum += score
    }
    return sum / Double(scores.count)
}
averageScore(scores: 33.3, 44.4, 55.5, 66.6)

//점수( 문자 또는 숫자 ) 를 입력받아 학점( A. B. C... )를 반환하는 함수 만들기 ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )

func calculaterGrade(score: Int) -> String {
    let grade: String
    if score >= 90 {
        grade = "A"
    } else if score >= 80 {
        grade = "B"
    } else if score >= 70 {
        grade = "C"
    } else {
        grade = "F"
    }
    return grade
}
calculaterGrade(score: 70)

//점수( 문자 또는 숫자 )를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기  ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )

func calculaterGrade(scores: [Int]) -> String {
    var sum = 0.0
    for score in scores {
        sum += Double(score)
    }
    sum /= Double(scores.count)
    
    if sum >= 90 {
        return "A"
    } else if sum >= 80 {
        return "B"
    } else if sum >= 70 {
        return "c"
    } else {
        return "F"
    }
}
calculaterGrade(scores: [90, 80, 90, 80])

//두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)

func getTwoNumberPlus(number1: String, number2: String) {
    print(String(number1 + number2))
}
getTwoNumberPlus(number1: String(1), number2: String(5))

//문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수

func getTwoNumberSame(number1: String, number2: String) {
    if number1 == number2 {
        print("Ok, same")
    } else {
        print("No")
    }
}
getTwoNumberSame(number1: "a", number2: "a")

//학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)

func getNumberChangeGrade(scores: Double) -> String {
    let grade: String
    if scores >= 4.5 {
        grade = "A+"
    } else if scores >= 4.0 {
        grade = "A"
    } else if scores >= 3.5 {
        grade = "B+"
    } else {
        grade = "under B"
    }
    return grade
}

getNumberChangeGrade(scores: 3.8)

//세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)

func getThreeNumberBool(number1: Int, number2: Int, number3: Int) -> Bool {
    let getThreee = (number1, number2, number3)
    let getvalue = (number1 * number2 * number3)

    switch getThreee  {
    case (_, _, _) where getvalue > 0 :
        return true
    default:
        return false
    }
}
getThreeNumberBool(number1: 3, number2: -2, number3: 5)

//특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")

func changeMonth(month: Int) -> String {
    switch month {
    case 1:
        return "Jan"
    case 2:
        return "Feb"
    default:
        return "just month"
    }
}
changeMonth(month: 2)

//윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

func findLeapYear(year: Int) -> String {
    switch year {
    case year where year % 100 != 0 && year % 4 == 0 || year % 400 == 0 :
        return "Leap Year"
    default:
        return "normal year"
    }
}
findLeapYear(year: 400)

//for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현

let base = 3
let power = 10
var answer = 1

for _ in 1...power { // _는 값이 없고 횟수를 의미한다.)
    answer *= base
}

print("\(base) is \(power) is \(answer)")

//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현

for i in (1...10).reversed() {
    print(i, terminator: " ")
}

//1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수

func multiplicationTable(getnumber: Int) {
    for i in 1...10 {
        print("\(i) * \(getnumber) = \(i * getnumber)")
    }
}

multiplicationTable(getnumber: 5)


//정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수

