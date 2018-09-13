//: Playground - noun: a place where people can play

import UIKit

/*:
 ## Practice
 */

/*:
 ---
 1. 이름을 입력 값으로 받아서 출력하는 함수
 ---
 */
func printerName(_ name: String) -> String {
    return "My Name is \(name)"
}
printerName("이규현")
/*:
 ---
 2. 나이를 입력 값으로 받아서 출력하는 함수
 ---
 */
func printerAge(_ age: Int) -> String {
    return "My Age is \(age)"
}
printerAge(30)
/*:
 ---
 4. 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
 ---
 */
func printerMySelf(age: Int, name: String) -> String {
    return "My Age is \(age) and I'm \(name)"
}
printerMySelf(age: 30, name: "규현")
/*:
 ---
 5. 정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
 ---
 */
func printerIsMultiple(number: Int) -> String {
    if number % 2 == 0 {
        return "\(number)는 2의 배수이다"
    } else {
        return "\(number)는 2의 배수가 아니다"
    }
}
printerIsMultiple(number: 16)
printerIsMultiple(number: 21)

/*:
 ---
 6. 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
 ---
 */
func inputFourGradePoint(_ OnePoint: Int, _ TwoPoint: Int, _ ThreePoint: Int, _ FourPoint: Int ) -> String {
    let sum = (OnePoint + TwoPoint + ThreePoint + FourPoint) / 4
    return " 4과목의 평균 값은 \(sum)"
}
inputFourGradePoint(30, 50, 90, 100)
/*:
 ---
 7. 점수( 문자 또는 숫자 ) 를 입력받아 학점( A. B. C... )를 반환하는 함수 만들기 ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )
 ---
 */
func sigleGardeCheck(Value: Int) -> String {
    if Value > 90 {
        return "\(Value)는 A학점입니다."
    } else if Value > 80 {
        return "\(Value)는 B학점입니다."
    } else if Value > 70 {
        return "\(Value)는 C학점입니다."
    } else if Value > 60 {
        return "\(Value)는 D학점입니다."
    } else if Value > 50 {
        return "\(Value)는 E학점입니다."
    } else {
        return "\(Value)는 F학점입니다."
    }
}
sigleGardeCheck(Value: 94)
sigleGardeCheck(Value: 80)
/*:
 ---
 8. 점수( 문자 또는 숫자 )를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기  ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )
 ---
 */
func multiGardeCheck(_ Value: Int...) -> String {
    var total = 0
    for Value in Value {
        total += Value
    }
    total /= Value.count
    print(total)
    
    if total > 90 {
        return "\(total)는 A학점입니다."
    } else if total > 80 {
        return "\(total)는 B학점입니다."
    } else if total > 70 {
        return "\(total)는 C학점입니다."
    } else if total > 60 {
        return "\(total)는 D학점입니다."
    } else if total > 50 {
        return "\(total)는 E학점입니다."
    } else {
        return "\(total)는 F학점입니다."
    }
}
multiGardeCheck(100, 10, 40, 50, 90, 100)





