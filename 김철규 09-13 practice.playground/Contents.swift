//: Playground - noun: a place where people can play

import Foundation

/* ======================= Question =========================================
 enum Month { case jan, feb } 를 정의하되 2월이 윤년인지 아닌지 정보를 전달할 수 있도록 구현        */

enum Month {
    case jan(String)
    case feb(thisYear: Int)
}
//var leapYear = Month.feb(thisYear: 2016)
//
//switch leapYear {
//case let .jan(thisYear):
//    print("\(thisYear) Jan")
//case let .feb(thisYear) where (thisYear % 400 == 0) || (thisYear % 4 == 0) && (thisYear % 100 != 0):
//    print("\(thisYear) is leapYear" )
//default:
//    "end"
//}


func leap(month: Month) {
    
    switch month {
    case .feb(let thisYear) where (thisYear % 400 == 0) || (thisYear % 4 == 0) && (thisYear % 100 != 0):
        print("\(thisYear) is leapYear" )
        
    case .feb(let thisYear) where !(thisYear % 400 == 0) || (thisYear % 4 == 0) && (thisYear % 100 != 0):
        print("\(thisYear) is Not leapYear" )
    default:
        print("error")
    }
}
leap(month: Month.feb(thisYear: 300))


/* ======================= Question =======================================
on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현 */

enum RemoteControl {
    case on, off

    mutating func turnOff() {
        self = .off
    }
    mutating func turnOn() {
        self = .on
    }

}

var on = RemoteControl.on
on.turnOn()
var off = RemoteControl.off
off.turnOff()



 /*********************** Question ****************************
 celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의
 각 케이스에는 Double 타입의 Associated Value 를 받도록 함
 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
 섭씨 = (화씨 - 32) * 5 / 9
 섭씨 = 켈빈 + 273
 ***************************************************/

//enum Temperature {
//
//}





/* ================================= 과제 1 ================================
        1.자연수를 입력받아 원래 숫자를 반대 순서로 뒤집은 숫자를 반환하는 함수           */

func reverse(number: UInt) -> UInt {
    let a = String(number)
    let b = a.reversed()
    let c = String(b)
    print(UInt(c)!)
    return UInt(c)!
}

reverse(number: 392)


/* ================================= 과제 2 ================================
 2개의 자연수와 사칙연산(+, -, *, /) 값을 가진 하나의 enum 타입을 입력받아 해당 연산을 수행하는 함수 */
 
 enum Arithmetic {
 case addition, subtraction, multiplication, division
        }


func calculator(x: Int, y: Int, z: Arithmetic) -> Int {

        switch z {
        case .addition:
            print(x + y)
            return x + y
        case .subtraction:
            print(x - y)
            return x - y
        case .multiplication:
            print(x * y)
            return x * y
        case .division:
            print(x / y)
            return x / y
        }
    }

calculator(x: 41, y: -23, z: .addition)







 
 

/* ================================= 과제 3 ================================
 정수 타입의 배열을 선언하고 해당 배열 요소 중 가장 큰 값을 반환하는 함수 만들기
 ex) [50, 23, 29, 1, 45, 39, 59, 19, 15] -> 59                          */


func theBiggest(number: Array<Int>) -> Int {
    let sortedArray = number.sorted(by: >=)
    print(sortedArray[0])
    return sortedArray[0]
}
//theBiggest(number: [1, 3, 5, 6, 77, 45])

theBiggest(number: [3, 4, 6, 7, 10, 629, 495])
 
 
 
/* ================================= 과제 4 ================================
 정수 타입의 배열을 2개 선언하고 겹치는 숫자들로 만들어진 배열을 반환하는 함수
 ex) [1, 2, 4, 8, 9, 12, 13] , [2, 5, 6, 9, 13]  -->  [2, 9, 13]           */

func arrayToEqual(x: Array<Int>, y: Array<Int>) -> Array<Int> {
    var thisIsEqual: Array<Int> = []
    for first in x {
        for second in y {
            if first == second {
                print(second)
                thisIsEqual.append(second)
            }
        }
    }
        return thisIsEqual
}
arrayToEqual(x: [1, 2, 3, 4, 5], y: [3, 4, 5, 6, 7])
