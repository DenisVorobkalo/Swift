
//TASK 1
class CarFuelTest {    
    private var fuelTankCapacity = [
        "Skoda": 50.0,
        "Toyota": 120.0,
        "Lada": 45.0
    ]
    private var fuelConsumption = [
        "Skoda": 6.2,
        "Toyota": 19.0,
        "Lada": 7.5
    ]      
    
    func carCapacity (atCar car: String) -> Double? {
        return fuelTankCapacity[car]
    }    
    func milegePerTank(atCar car: String) -> Double {
        guard fuelTankCapacity.count > 1 else {
                return 0
            }
        guard fuelConsumption.count > 1 else {
            return 0
        }
        var totalMilege = 0.0
        var tank = fuelTankCapacity[car]!
        var milegePerLitre = 100 / fuelConsumption[car]!
        totalMilege = tank * milegePerLitre
        return totalMilege    
        }
}
let testSkoda = CarFuelTest()
print(testSkoda.milegePerTank(atCar: "Lada"))

//TASK 2

enum carError: Error {
    case noSuchCar
    case noMoney
    case noTrip
    //case overCapacity
}
struct carParam {
    var fuelTankCapacity: Double
    var fuelConsumption: Double
    var fuelPrice: Double
}
class CarForRide {
    private var cars = [
        "Skoda": carParam(fuelTankCapacity: 50.0, fuelConsumption: 6.2, fuelPrice: 55.05),
        "Toyota": carParam(fuelTankCapacity: 100.0, fuelConsumption: 19.0, fuelPrice: 49.90),
        "Lada": carParam(fuelTankCapacity: 45.0, fuelConsumption: 7.5, fuelPrice: 43.80)
    ]
    
    func canWeGo (tripLength: Double, moneyInPoket: Double, myCar: String) throws -> String? {
        guard let car = cars[myCar] else {
            throw carError.noSuchCar
        }
        guard moneyInPoket > 0 else {
            throw carError.noMoney
        }
        guard tripLength > 0 else {
            throw carError.noTrip
        }
//          guard moneyInPoket / car.fuelPrice <= car.fuelTankCapacity else {
//              throw carError.overCapacity
//          }
        
        var howMuchFuel = moneyInPoket / car.fuelPrice
        var milegePerLitre = 100 / car.fuelConsumption
        var totalMilege = howMuchFuel * milegePerLitre
        var canWe = String ()
        if totalMilege >= tripLength {
            canWe = "Доедем!"
        }else {
            canWe = "Не доедем!"
        }
        print(canWe)
        return canWe
    }
}
let carForRide = CarForRide()
do {
    let chooseCar = try carForRide.canWeGo(tripLength: 90, moneyInPoket: 291, myCar: "Lad")
} catch carError.noSuchCar {
    print("Такого авто не существует")
} catch carError.noMoney {
    print("Ты забыл деньги?")
} catch carError.noTrip {
    print("Не задан маршрут")
}
