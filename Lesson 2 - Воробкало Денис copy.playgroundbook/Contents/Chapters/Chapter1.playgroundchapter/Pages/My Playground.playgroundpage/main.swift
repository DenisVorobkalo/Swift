//ЗАДАНИЕ 1
// ax^2 + bx + c = 0
let a: Float = 4.0
let b: Float = 44.0
let c: Float = 1.0
let D: Float = (b * b - 4 * a * c)
if D < 0 {
    print ("D = \(D) - корней нет")
} else if D == 0 {
    print ("D = \(D) - корень один")
    let x = (-b+D.squareRoot())/(2*a)
    print ("x = \(x)")
} else if D > 0 {
    print ("D = \(D) - корней два")
    let x1 = (-b+D.squareRoot())/(2*a)
    print ("x1 = \(x1)")
    let x2 = (-b-D.squareRoot())/(2*a)
    print ("x2 = \(x2)")
}

//ЗАДАНИЕ 2
var k1: Float = 15.0
var k2: Float = 15.0
var sumK = (k1 * k1) + (k2 * k2)
var G: Float = sumK.squareRoot()
print("Гиппотенуза - \(G)")
var P = G + k1 + k2
print("Периметр - \(P)")
var S = (k1 * k2) / 2
print("Площадь - \(S)")

//ЗАДАНИЕ 3

let prcnt: Float = 6.5
var sum: Float = 1000000.0
var year: Int = 0
while year < 5 {
    sum = sum + (sum / 100) * prcnt
    year += 1
}; print("Сумма равна \(sum)")


