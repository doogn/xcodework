//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a=2; var b=2

print (a, b)
print ("ADSf")

// 주석처리 방법
/*
 ㅁㄴ아ㅓ훔니ㅓㅏ휘머ㅏㄴ웋이너ㅏ
 */

// 정수, 실수, "문자열" 불(Bool)
//1 100 -2 -500
//1.2 2.45 100.3
//"wrh4" "$#@$^wer
//true false

3+3
20.3/12.3
20%3

// 사칙연산 + - * / %(실수연산 X)
// "가나다"+"가나다"

print ("(3+2)")
print ("\(3+2)")

// 100==200 // != > <
100==100
100 != 100
// 변수 바로뒤에 !붙이면 다른 의미가 있다


str = "Hello, playground"
print (str)
var i = 100
print (i)

// 상수 선언
let pi = 3.14
// 변수를 써도 되는데 상수를 쓰는 이유 => 실수를 줄이기 위해서 (상수는 변경 불가)
// pi = pi + 10 => 상수이므로 변경 안됨
print (pi)

// 변수 선언
var itemCount:Int = 10
// Int 명시하지 않으면 Intager로 인식하긴 하는데 습관적으로 선언하고 쓰는 게 좋긴 하다
itemCount += 50
itemCount += 50
// itemCount = itemCount + 50 (+= 자기 것에 더함)

let height:Double = 1.71
let weight:Double = 64.5
let BMI:Double = weight / (height*height)
// let BMI2 = weight / (height*height) // 가능
// 변수 선언시 명시적 선언 대신 암묵적으로 선언해도 OK
//var asdf = 0
//asdf // ESC키로 인텔리전스로 확인가능

var isOK:Bool = false
isOK = true

var helloString1 = "all"
var helloString2 = helloString1 + " hi"

var fruitname = "banana"
var myStr = "I like a \(fruitname)"
// \( )는 괄호 안의 값을 나타내라는 것
print(myStr)


//자료형 변환
let intValue = Int(123.45)

let gumPrice:Int = 100
let pay = Double(gumPrice) * 1.08
//let payTest = gumPrice * 1.08 // compile error (Double로 선언해줘야)

let appleCount = 5
let myMessage:String = "banana " + String(appleCount) + " remains"
// 숫자 5를 String을 이용해서 문자로 변환

let inputString = "100"
let answer = Int(inputString)! * 5
// ! => 강제로 받아들이겠다 (optional value)

// if문
var score = 100
if 80 < score {
    print("Good")
}

// if else문
var score2 = 50
if 80 < score2 {
    print("Good")
} else {
    print("Bad")
}

// if else if, else문
var score3 = 50
if 80 < score3 {
    print("Good")
} else if score3 > 40 && score3 <= 80 {
    print("Bad")
} else {
    print (">>>???")
}

// switch 문
var dice = 4
switch dice {
case 1:
    print("11111")
case 2, 5, 6:
    print("2 or 5 or 6")
default:
    print("number is: \(dice)")
    //var tempStr:String = String(dice)
    //print("number is: " + tempStr)  => 가능하나 좀 번거로워
    print("number is: \(dice+7)")
}

// while 문
var d = 0
while (d < 100){
    d += 7
}
print ("Answer is \(d)")


// 예제: 1부터 100까지의 합을 구하라
var sum = 0
var num = 0
while (num < 100){
    num += 1
    sum += num
}
print ("1부터 100까지의 합은 \(sum)입니다")



// for 문
for i in 0...3 {
    print (i)
}

for i in 0..<3 {
    print (i)
}

for i in 0..<3 {
    print ("\(i)")
}

// 예제 1: 1~100까지의 합의 결과를 출력하시오

var j = 0
for i in 1...100 {
    j += i
}
print ("1부터 100까지의 합은 \(j)입니다")


// 예제 2: 구구단을 출력하시오

for i in 2...9 {
    print ("")
    print ("\(i)단 입니다")
    for j in 1...9 {
        print ("\(i) X \(j) = \(i*j)")
    }
}

print ("")
print ("------------------------------")
print ("")

// 예제 3: 다음을 출력하시오

for _ in 1...30  // = for(int i=1;i<=4;i++)
//변수 대신 _ 쓴 이유는 실제 for 문 안에서 이 변수를 사용할 일이 없어서
{
    print ("*",terminator:"")  // 개행(/n)을 하지 않게 한다
    }
print ("")

print ("")
print ("------------------------------")
print ("")

for i in 1...30
{
    if i%4 == 0
    {
        print()
    }
    else
    {
        print("*",terminator:"")
    }
}
print ("")
print ("")
print ("------------------------------")
print ("")


//예제 3~4: 다음을 출력하시오

for i in 1...4
{
    for _ in 1...i
    {
        print ("*",terminator:"")
    }
    print ("")
}

print ("")
print ("------------------------------")
print ("")

for i in (1...4).reversed()  //역순으로 for 문 돌릴 때
{
    for _ in 1...i
    {
        print ("*",terminator:"")
    }
    print ("")
}

print ("")
print ("------------------------------")
print ("")


