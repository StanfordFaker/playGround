//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Hi"

print(str)

// 10진수를 2진수로
var d1 = 10
var b1 = String(d1, radix:2)
print(b1)

// 2진수를 10진수로
var b2 = "0111111"
var d2 = Int(b2, radix:2)!
print(d2)


// ***** 이름을 입력값으로 받아서 출력하는 함수 *****
func sayMyName(name: String) -> String {
    let printName = "Here is " + name
    return printName
}
let result = sayMyName(name: "John")
print(result)

// ***** 나이를 입력값으로 받아서 출력하는 함수 *****
func howOld(age: Int) -> String {
    let printAge = "He is " + String(age) + " years old"
    return printAge
}
let result2 = howOld(age: 18)
print(result2)


// ***** 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수 *****
func introPerson(name: String, age: Int) -> (){
    let printIntro = "He's name is \(name) and \(age) years old."
    print(printIntro)
}
introPerson(name: "John", age: 18)
introPerson(name: "Simon", age: 26)


// ***** 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수 *****
func evenNumberOrNot(number: Int) -> Int{
    let evenNum = number % 2
    if evenNum == 0 {
    print("\(number) is Even Number")
    } else {
        print(number, "is Odd Number")
        }
    return evenNum
}
evenNumberOrNot(number: 9)
evenNumberOrNot(number: 10)
evenNumberOrNot(number: 0)


// ***** 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10) *****
func multiplication (num1: Int=10, num2: Int) -> Int{
    let result = num1 * num2
    print(result)
    return result
}
multiplication(num2: 2)
multiplication(num2: 100)


// ***** 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수 *****
func average4(korean: Double, english: Double, math: Double, science: Double) -> Double{
    let averageResult = (korean + english + math + science)/4
    print(averageResult)
    return (averageResult)
}
average4(korean: 80, english: 55, math: 98.4, science: 45.5)
average4(korean: 77.4, english: 98.3, math: 88, science: 100)


// ***** 점수(문자 또는 숫자)를 입력받아 학점(A. B. C...)를 반환하는 함수 만들기 (90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F)
func gradeCounter(korean: Double, english: Double, math: Double, science: Double) -> Double{
    let gradeResult = (korean + english + math + science)/4
    if gradeResult >= 90 {
        print("A")
    } else if gradeResult >= 80 {
        print("B")
    } else if gradeResult >= 70 {
        print("C")
    } else {
        print("F")
    }
    return gradeResult
}
gradeCounter(korean: 80, english: 55, math: 98.4, science: 45.5)
gradeCounter(korean: 77.4, english: 98.3, math: 88, science: 100)



