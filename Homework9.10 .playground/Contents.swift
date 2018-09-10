//: Playground - noun: a place where people can play

import UIKit

//이름을 입력 값으로 받아서 출력하는 함수

func printName(name: String){
    print(name)
}
printName(name: "SeongHwan")

//나이를 입력 값으로 받아서 출력하는 함수

func printAge(age: Int){
    print(age)
}
printAge(age: 24)

//이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수

func introducePrint(name: String, age: Int){
    print("Hello My name is \(name)! I'm \(age)")
}
introducePrint(name: "성환", age: 24)

//정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func isTwoToTheTwoPower (num: Int) -> Bool{
    if num % 2 == 0{
        return true
    }else{
        return false
    }
    
}
isTwoToTheTwoPower(num: 478)

//정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)

func multiplicationTwoNumber(num1: Int, num2: Int = 10) -> Int{
    return num1 * num2
}

multiplicationTwoNumber(num1: 5, num2 : 9)

//4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수

func printTestScoreMeanValue(test1: Int,test2: Int,test3: Int,test4: Int) -> Int{
    let total = test1 + test2 + test3 + test4
    let meanValue = total / 4
    return meanValue
}
printTestScoreMeanValue(test1: 96, test2: 60, test3: 38, test4: 71)
