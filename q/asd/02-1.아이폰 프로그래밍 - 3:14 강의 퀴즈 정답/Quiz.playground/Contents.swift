//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var index = 0, sum = 0

while (index <= 10){
    sum += index
    index += 1
}
print ("while문: 1~10까지의 합은 \(sum)입니다.")




var i:Int = 1
var j:Int = 1
print("-------------------------------------")
print("")

for i in 2...9
{
    print("\(i)단 입니다.")
    for j in 1...9
    {
        print("\(i) * \(j)  = \(i*j)")
    }
    
}





print("-------------------------------------")
print("")
sum = 0
for i in 1...10
{
    sum += i
}
print ("for문 : 1~10까지의 합은 \(sum)입니다.")



print("-------------------------------------")
print("")
// ******************************
for i in 1...30 //  = for(int i=1;i<=4;i++)
{
    print("*",terminator:"")
}
print("")


print("-------------------------------------")
print("")
//***
//***
//***
//***
//***
//***
//***
//**
for i in 1...30 //  = for(int i=1;i<=4;i++)
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
print("")


print("-------------------------------------")
print("")
//*
//**
//***
//****


for i in 1...4 //  = for(int i=1;i<=4;i++)
{
   for j in 1...i
   {
    //    print("*")
    print("*",terminator:"")
   }
    print("")
}


print("-------------------------------------")
print("")
//****
//***
//**
//*
for i in 1...4
{
    for j in i...4
    {
        print("*",terminator:"")
    }
    print("")
}

// 감소하는 for 문은 어떻게 쓸까요?
//for i in 3..<-3
//{
//    print(i)
//}
print("-------------------------------------")
print("")
for i in (-3..<3).reversed()
{
    print(i)
}


