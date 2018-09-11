//: [Previous](@previous)
/*:
 # Loops
 - For-In Loops
 - While Loops
   - while
   - repeat-while
 */
/*:
 ---
 ## For-In Loops
 ---
 */
print("\n---------- [ for ] ----------\n")
/***************************************************
 for <#item#> in <#items#> {
 <#code#>
 }
 ***************************************************/

//for (int i = 0; i <= 5; i++) {
//   C 스타일의 for 문
//}

for index in 1...4 {
  print("\(index) times 5 is \(index * 5)")
}

// Wildcard Pattern

for _ in 0...3 {
  print("hello")
}


for chr in "Hello" {
  print(chr, terminator: " ")
}
print()

let list = ["Swift", "Programming", "Language"]
for str in list {
  print(str)
}

var i = 3
var sub = 1
for index in 1...10 {
    print("\(i)의 \(index)제곱은 \(sub *= i)")
}

/*:
 ---
 ### Question
 - for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현
 - for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현
 ---
 */

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


/*:
 ---
 ## While Loops
 - 조건이 거짓이 될 때까지 일련의 명령문 수행
 - 첫 번째 반복이 시작되기 전에 반복 횟수를 알지 못할 때 많이 사용
 - while  /  repeat-while
 ---
 */
print("\n---------- [ while ] ----------\n")
/***************************************************
 while <#condition#> {
 <#code#>
 }

 - 루프를 통과하는 각 패스의 시작 부분에서 조건을 평가
 ***************************************************/

var num = 0
var sum = 0

while num <= 100 {
  sum += num
  num += 1
}

sum


/***************************************************
 repeat {
 <#code#>
 } while <#condition#>
 
 - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while 문으로 많이 사용
 ***************************************************/

num = 0
sum = 0

repeat {
  sum += num
  num += 1
} while num <= 100

sum

/*:
 ---
 ### Question
 for , while , repeat - while 등을 골고루 활용하여 아래 문제들을 구현해보세요.
 1. 1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수
 2. 정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수
 3. 정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수
 4. 정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수
 5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수
 ---
 */
//for a in 1...9 {
//    print("\(a)의 배수 :", terminator: " ")
//    for b in 1...9 {
//        print(a * b, terminator: " ")
//    }
//    print(" / ")
//}

func mutipleA(_ a: Int) {
    print("\(a)의 배수 :", terminator: " ")
    for b in 1...9 {
        print(a * b, terminator: " ")
    }
}
mutipleA(4)



print()



func factorial(_ a: Int) {
    var sum = 1
    for index in 1...a {
        sum *= index
    }
    print("\(a) factorial = \(sum)")
}
factorial(4)

func mutipleAB(_ a: Int, _ b: Int) {
    var sum = 1
    for _ in 1...b {
        sum *= a
    }
    print("\(a)를 \(b)번 곱하면 \(sum) ")
}

mutipleAB(2, 4)

func plus(_ a: Int) {
    let b: String = String(a)
    var chaAry: Array<Character> = Array()
    for index in b {
        chaAry.append(index)
    }
    type(of: chaAry)
    print(chaAry)
    
    var sum = 0
    for i in 1...chaAry.count {
        sum += Int(chaAry.index(after: (i - 1)))
        print(sum)
    }
    print(sum)
}
plus(1234)

func plus2(_ x: Int) {
    
    var sum = 0
    var share = x
    
    for _ in 1... {
        sum += share % 10
        share = share / 10
        if share == 0 {
            break
        }
    }
    print(sum)
    print(share)
}
plus2(33333)



func search35() {
    print("3과 5의 공배수는 :", terminator: " ")

    for i in 1...100 {
        if (i % 3 == 0), (i % 5 == 0)  {
            print(i, terminator: " ")
        }

    }
    
}
search35()
print()


func alipoutA(_ a: Int) {
    print("\(a)의 약수 :", terminator: " ")
    for i in 1...a {
        if a % i == 0 {
            print(i, terminator: " ")
        }
    }

}
alipoutA(32)
print()

func primeNumber(_ a: Int) {
    for i in 2...a {
        if (a % i == 0), a > i {
            print("소수가 아니다")
            return
        } else {
            print("소수이다")
            return
        }
    }
}
primeNumber(2)

// 1 2 3 4 5 6 7 8  9  10 11
// 0 1 1 2 3 5 8 13 21 34 55 ....
// x y z
//   x y z
//     x y z
func fibonacciNumber(_ a: Int) {
    var x = 0
    var y = 1
    var add = 0
    
    switch a {
    case 1:
        print(0)
    case 2:
        print(1)
    default:
        for _ in 1...(a - 2) {
            add = x + y
            x = y
            y = add
        }
        print(add)
    }
}

fibonacciNumber(5)

//: [Next](@next)
