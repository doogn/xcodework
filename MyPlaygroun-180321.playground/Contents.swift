//: Playground - noun: a place where people can play

import UIKit

//함수 1: 입출력 없는 기본형태
print("------  함수 설명 (입출력 없는 기본형태)-----")
func showHello1(){
    print("What's up?")
}

showHello1()
print("\n")

//함수 2: 입력만 있는 형태
print("------  함수 설명 (입력만 있는 형태)-----")
func showHello2(name:String) {
    let message = "\(name)씨 안녕하세요!"
    print(message)
}

showHello2(name: "로버트 다우니 주니어")
print("\n")

//함수 3: 출력만 있는 형태
print("------  함수 설명 (출력만 있는 형태)-----")
func showHello3() -> String {
    let name = "트럼프"
    return "\(name)씨 안녕하세요!"
}

let msgFromFunction = showHello3()
print(msgFromFunction)

print("\n")

//함수4: 입출력이 모두 있는 형태
print("------  함수 설명 (입출력이 모두 있는 형태)-----")
func showHello4(name:String) -> String {
    return "\(name)씨 안녕하세요!"
}
print(showHello4(name:"호빵맨"))
print("\n")

//더하기 1
print("------  더하기 1 -----")
func myAdd2(a:Int,b:Int) {
    print("\(a+b)")
}

myAdd2(a:3,b:2)
print("\n")

//더하기 2
print("------  더하기 2 -----")
func myAdd(a:Int,b:Int) -> Int{
    return a+b
}

var myResult = myAdd(a:3,b:2)
print(myResult)
print("\n")
    //return 타입을 지정하면 지정하지 않을 때보다 함수 활용의 유연성(->확장성) 증가

//다양한 연산
print("------  다양한 연산 -----")
func calculate(a:Double,b:Double,c:Double,d:Double) -> Double{
    return (a+b)*c/d
}

var answer = calculate(a:2.5, b:3.3, c:15.2, d:7.1)
print(answer)
print("\n")

//다양한 연산 2
print("------  다양한 연산 2 -----")
func twoAns(a:Double,b:Double,c:Double,d:Double) -> (Double, Double) {
    let ans1 = a*b/c
    let ans2 = d+a-b
    return (ans1, ans2)
}

var ansTotal = twoAns(a:7.5, b:5.2, c:9.6, d:3.2)
print(ansTotal)
print("\n")

//For Loop 더하기 1
print("------  For Loop 더하기 1 -----")
func myForLoop(a:Int, b:Int) -> Int{
    var result = 0
    for i in a...b{
        result += i
    }
    return result
}
print(myForLoop(a:1, b:10))
print("\n")

print("------  Quiz: 5! 구하기 -----")

func factorial(n:Int)->Int{
    if(n == 1) {
        return 1
    }
    else{
        return n * factorial(n: n-1)
    }
}

print(factorial(n:5))
print("\n")


print("------  재귀 함수 설명 (100~200 합) -----")

func recursiveCall2(start:Int, end:Int)->Int{
    //print("recursiveCall received \(n)")
    if ( start == 0){
        return 0
    }else if ( start >= end ){
        return end
    }else{
        return start + recursiveCall2(start: start+1, end: end)
    }
}

var recursiveResult2 = recursiveCall2(start:100, end:200)
print(recursiveResult2)
print("\n")

print("------ 피보나치 수열 -----")

func fibo(n:Int) -> Int{
    if(n == 0){
        return 0
    }else if(n == 1){
        return 1
    }else{
        return fibo(n:n-1) + fibo(n: n-2)
        }
    }
    // 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55

var fiboResult = fibo(n: 10)
print (fiboResult)


print("\n")
