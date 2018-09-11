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
    return("I`m ," + name2 + "!, and " + age2 + "years old")
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

func aver(_ numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

aver(10, 20, 90, 100)


//점수( 문자 또는 숫자 ) 를 입력받아 학점( A. B. C... )를 반환하는 함수 만들기 ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )

func sepscore(grade : Double) -> String {
    if grade >= 90 {
        return "A 학점"
    } else if grade >= 80 {
        return "B 학점"
    } else if grade >= 70 {
        return "C 학점"
    } else {
        return "F 학점"
    }
}

sepscore(grade: 91)
sepscore(grade: 89)
sepscore(grade: 79)
sepscore(grade: 69)


//점수( 문자 또는 숫자 )를 여러개 입력받아 평균에 대한 학점을 반환하는 함수 만들기  ( 90점이상 A, 80점이상 B, 70점이상 C, 그 이하 F )

func totalSeperateByGrade(each grades : Double...) -> String {
    var totalGrades = 0.0
    for total in grades {
        totalGrades += total
    }
    let averageTotalGrades = totalGrades / Double(grades.count)
    if averageTotalGrades >= 90 {
        return "You`ve got A"
    } else if averageTotalGrades >= 80 {
        return "You`ve got B"
    } else if averageTotalGrades >= 70 {
        return "You`ve got C"
    } else {
        return "You failed"
    }
}
totalSeperateByGrade(each: 80, 40, 90, 20, 10, 99)
totalSeperateByGrade(each: 99, 88, 93, 94, 99, 100)
