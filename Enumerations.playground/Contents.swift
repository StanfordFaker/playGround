//: Playground - noun: a place where people can play

import UIKit


/*******
 on 과 off 값을 가진 enum 타입 RemoteControl 에 호출 시마다 on, off 값을 바꿔줄 수 있는 함수 구현
*********/
enum RemoteControl {
    case on, off
    // code
}

var remoteControl = RemoteControl.on
type(of: remoteControl)


/************
 각 케이스별로 연산을 수행하고 그 값을 반환하는 evalue 함수 구현
**************/


//func evaluate(_ expression: ArithmeticExpression) -> Int {
//  switch expression {
//    //code
//  }
//}



/***************************************************
 celcius, fahrenheit, kelvin 온도 3가지 케이스를 가진 Temperature enum 타입을 정의
 각 케이스에는 Double 타입의 Associated Value 를 받도록 함
 각 온도를 섭씨 온도로 변환해주는 toCelcius() 함수를 구현
 섭씨 = (화씨 - 32) * 5 / 9
 섭씨 = 켈빈 + 273
 ***************************************************/

//enum Temperature {

