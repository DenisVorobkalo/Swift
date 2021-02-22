//  func MFF(frstVal someVal: Int, anotherVal: String, _ val: String) -> String{
//      print("Hello")
//      let c = String(someVal) + anotherVal + val
//      return c
//  }
//  
//  print(MFF(frstVal: 10, anotherVal: "hello", "world"))

//ЗАДАНИЕ 1
func  evenNum (_ number: Int) -> String{
    if ((number % 2) != 0) {
        let c: String = "Нечетное число"
        return c
    }else{
        let c: String = "Четное число"
        return c
    }
}
print(evenNum(7))

//ЗАДАНИЕ 2
func  divInto3 (_ number: Int) -> String{
    if ((number % 3) != 0) {
        let c: String = "Не делится на 3"
        return c
    }else{
        let c: String = "Делится на 3"
        return c
    }
}
print(divInto3(3001))

//ЗАДАНИЕ 3
var array = [Int]() 
for i in 1...100 {
    array.append(i)
}
print("Массив от 1 до 100 - \(array)")

//ЗАДАНИЕ 4
var arrayToBite = array
var currentIndex = 0
for element in arrayToBite {
    if (currentIndex > 100) {
        break
    } else if (divInto3(element) == "Делится на 3") {
        arrayToBite.remove(at: currentIndex)
        } else if (evenNum(element) == "Четное число") {
            arrayToBite.remove(at: currentIndex)
        } else {
            currentIndex += 1
        }
}
print("Покусал массив - \(arrayToBite)")

//ЗАДАНИЕ 5
var fibArray = [0, 1]
for i in 2...50 {
    var x = fibArray [i - 1] + fibArray [i - 2]
    fibArray.append(x)
    }
print("Массив чисел Фибоначчи - \(fibArray)")

//ЗАДАНИЕ 6
var simple = [Int]()
for i in 2...100 {
    simple.append(i)
}
//print("Массив простых чисел - \(simple)")
var p = 2
var d = (p + 2)
var iNum = 0
for num in simple {
    if (num == d) {
        simple.remove(at: iNum)
        p = p + p
        d = (p + 2)
    }else {
        iNum += 1
        }
}
//print("Массив простых чисел - \(simple)")
