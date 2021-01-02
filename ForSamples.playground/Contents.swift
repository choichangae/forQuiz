import UIKit

let hello1 = { () -> Void in
    print("haha!")
}

func hello2() -> Void {
    print("hoho!")
}

hello1()
hello2()

let hollo1 = { (name: String) -> Void in
    print("haha! \(name)")
}
//let hollo1 = {
//    print("haah! \($0)")
//}


//let hollo2 = { () in
//    print("haha!")
//}

let hollo2 = {
    print("haha!")
}



//1.사과 고구마 감자 피자 치즈 닭 의 데이터를 이용해서 "내가 좋아하는 "을 붙여서 모두 표현하시오
//내가좋아하는 사과, 내가 좋아하는 고구마~

let fruits = ["사과", "고구마", "감자", "피자", "치즈"]
for index in 0...fruits.count-1
{
    print("내가 좋아하는 \(fruits[index])")
}

fruits.forEach {
    print($0)
}

//2. 1,3,5,7,9를 포문을 사용해서 출력하시오
//3. ["빵", "0", "빵","0", "빵"] 0과 빵이 있다. 빵만 출력해보자, var game = ["빵", "0", "빵","0", "빵"]
// 빵 빵 빵

let game = ["빵", "0", "빵", "0", "빵"]
var result: String = ""
for item in game
{
    if(item == "빵")
    {
        result.append(item)
        result.append(" ")
    }
}
print(result)

result.removeAll()
let breads = game.filter { $0 == "빵" }
breads.forEach{
    result.append($0)
    result.append(" ")
}
print(result)



//4.19단을 출력하시오 a * b = c

//5.입력을 받아서, 원하는 구구단을 출력해 주세요
// 입력은 변수나 상수로 받습니다.
let number = 8
for index in 1...9
{
    print("\(number) x \(index) = \(number*index)")
}

let multiplication = (1...9).map{"\(number) x \($0) = \(number*$0)"}
multiplication.forEach
{
    print($0)
}

//6.별표로 삼각형 출력하기


//7.다음 합을 출력하세요
//1 + 1/2 + 1/3 + 1/4 + 1/5 ... 1/n
//Input the number of terms : 5
//Expected Output :
//1/1 + 1/2 + 1/3 + 1/4 + 1/5 +
//Sum of Series upto 5 terms : 2.283334

var sum: Double = 0
let inputNumber = 5
for index in 1...inputNumber
{
    sum += 1.0/Double(index)
}
print(sum)

(1...inputNumber).reduce(0)
{
    $0 + 1.0/Double($1)
}
print(sum)

//
//8.다음을 출력하세요
//1
//01
//101
//0101
//10101
//

//9.스퀘어합을 출력하세요
//Input the number of terms : 5
//Expected Output :
//The square natural upto 5 terms are :1 4 9 16 25
//The Sum of Square Natural Number upto 5 terms = 55
//
var sum2: Double = 0
let inputNumber2: Int = 5
for index in 1...inputNumber2
{
    let value: Double = Double(index)*Double(index)
    print("\(value)")
    sum2 += value
}
print("sum is \(sum2)")


(1...inputNumber2).forEach
{
    print("\(Double($0)*Double($0))")
}
let sum3 = (1...inputNumber2).reduce(0)
{
    $0 + Double($1)*Double($1)
}
print("sum is \(sum3)")

//10.다이아몬드를 출력하세요
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *
var printString: String = ""


var starCount = 1
let center = 5
let starIncreaseCount = 1
let starDecreaseCount = -1
for row in 1...9
{
    for column in 1...9
    {
        if( column <= center - starCount )
        {
            printString.append(" ")
        }
        else if( column >= center + starCount)
        {
            printString.append(" ")
        }
        else
        {
            printString.append("*")
        }
    }
    
    printString.append("\n")
    
    if(row < center)
    {
        starCount += starIncreaseCount
    }
    else
    {
        starCount += starDecreaseCount
    }
}
print(printString)

printString = ""
for row in 1...9
{
    (1...9).forEach{
        if( $0 <= center - starCount )
        {
            printString.append(" ")
        }
        else if( $0 >= center + starCount)
        {
            printString.append(" ")
        }
        else
        {
            printString.append("*")
        }
    }
    printString.append("\n")
    
    if(row < center)
    {
        starCount += starIncreaseCount
    }
    else
    {
        starCount += starDecreaseCount
    }
}
print(printString)
