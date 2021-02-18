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
        let c: String = "Нетное число"
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
print("Не кусал массив - \(arrayToBite)")
for element in arrayToBite {
    if (divInto3(element) == "Делится на 3") {
        arrayToBite.remove(at: currentIndex)
        print("Покусал массив - \(arrayToBite)")
        } else if (evenNum(element) == "Четное число") {
            arrayToBite.remove(at: currentIndex)
        } else if (currentIndex > 100) {
            break
        }
    currentIndex += 1
}
print("Покусал массив - \(arrayToBite)")
