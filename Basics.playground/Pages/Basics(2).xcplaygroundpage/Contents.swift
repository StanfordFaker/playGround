//: [Previous](@previous)

import Foundation

/*:
 ## Question  (switch 를 이용해서 구현)
 */

/***************************************************
 1) 두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)
 ***************************************************/

func twoInteger(_ integerOne: Int , _ intergerTwo: Int) {
    let twoIntegerAdd = (integerOne, intergerTwo)
    switch twoIntegerAdd {
    case let (x,y):
        var addValue = 0
        addValue = (x * 10) + y
        print("\(x)x10 + \(y) = \(addValue)")
    }
}
twoInteger(5, 8)

 
 /***************************************************
 2) 문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
 ***************************************************/

func twoStringSame(_ stringOne: String , _ stringTwo: String) {
    if stringOne == stringTwo {
        print("same String")
    } else {
        print("not same")
    }
}
twoStringSame("qqqq", "qqqq")
twoStringSame("qqqq", "aaaa")

/***************************************************
 3) 학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)
 ***************************************************/


/***************************************************
 4) 세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)
 ***************************************************/


func threeNumMiutlple(_ intOne: Int, _ intTwo: Int, _ intThree: Int) {// -> Bool {
    let threeNumMiutlpleValve = (intOne, intTwo, intThree)
    
    switch threeNumMiutlpleValve {
    case let (x,y,z) where ((x*y*z) % 2) == 0:
        print("true")
        //return true
    default:
        print("false")
    }
}

threeNumMiutlple(1,3,5)
threeNumMiutlple(2,2,2)

/***************************************************
 5) 특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")
 ***************************************************/
func chaegeMonth(_ intMonth: Int) -> String {
    
    switch intMonth {
    case 1:
        return "Jan"
    case 2:
        return "Feb"
    case 12:
        return "Dec"
    default:
        return "입력된 데이터가 없습니다"
    }
}

chaegeMonth(1)
chaegeMonth(12)
/***************************************************
 6) 윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)
 ***************************************************/

/*
func leapYear(_ intYear: Int) -> String {
    
}
*/

//Qize
/***************************************************
 for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현
 for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현
 ***************************************************/
let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

for num in (1...10).reversed() {
    print(num, terminator: " ")
}
print()

//Qize
/***************************************************
 for , while , repeat - while 등을 골고루 활용하여 아래 문제들을 구현해보세요.
 
 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

 ***************************************************/


// 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수


func inputNumberDan(_ inputNum: Int) {
    
    var value = 0
    for answer in 1...9 {
        value = inputNum * answer
        print("\(inputNum) * \(answer) = \(value)")
    }
}

inputNumberDan(3)

//  정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
func inputNumberFactorial(_ inputNum: Int) {
    
    var result = 0
    repeat{
        result = inputNum * (inputNum - 1)
    } while inputNum == 0
    print("\(inputNum)!의 값은 \(result)")
}

inputNumberFactorial(3)
inputNumberFactorial(9)

// 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
func inputNumberFactorial(_ inputOne: Int, _ inputTwo: Int) {
    var inputOne = inputOne
    for count in 1...inputTwo {
    inputOne = inputOne * count
    }
}

inputNumberFactorial(5, 2)

// 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
func inputDigitsSum(_ inputOne: Int) {
    let temp = inputOne / 10
    print(temp)
    let value = inputOne - (temp * 10)
    print(value)
    let sum = temp + value
    print("정수가 두자리인 경우 합은 \(sum) ")
}

inputDigitsSum(53)

// 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
print("100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수")
func threeToFiveCommonMultiple() {
    for value in 1...100 {
        if value % 3 == 0 && value % 5 == 0 {
            print(value)
        }
    }
}
threeToFiveCommonMultiple()

/*
9월 11일 과제
- 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
- 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
- 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
*/

// 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수
print("=== 정수 하나를 입력받아 그 정수의 약수를 모두 출력하는 함수 ===")
func inputIntDivisor(_ Number: Int) {
    var count = 1
    repeat {
        if Number % count == 0 {
            print(count)
        }
        count += 1
    } while count <= Number
}

inputIntDivisor(7)

// 2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수
print("2 이상의 정수를 입력받아, 소수인지 아닌지를 판별하는 함수")
func primeNumber(_ Number: Int) {
    var count = 1
    var primeNumberCount = 0
    
    repeat {
        if Number % count == 0 {
            primeNumberCount += 1
        }
        count += 1
    } while count <= Number
    
    if( primeNumberCount == 2) {
        print("\(Number)는 소수입니다")
    } else {
        print("\(Number)는 소수가 아닙니다")
    }
}
primeNumber(1224)
primeNumber(1223)

// 정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수
// 30를 입력하면 30번째 피보나치를 출력한다
print("정수를 입력받아 입력받은 수에 해당하는 자리의 피보나치 숫자를 반환하는 함수")
func inputInterOutputPibo(_ Number: Int) {
    let Number = Number - 1
    var array = [0, 1]
    for i in 1...Number-1 {
        array.append(array[i-1] + array[i])
    }
    print (array)

}
inputInterOutputPibo(3)









