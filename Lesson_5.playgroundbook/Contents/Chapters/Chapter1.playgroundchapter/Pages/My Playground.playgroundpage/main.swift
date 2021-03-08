enum engineStatus {
    case start, stop
}

enum doorsStatus {
    case lock, unlock
}

enum petrolType {
    case benzine, disel
}

protocol Car: class {
    var petrolType: petrolType { get }
    var engineVolume: Float { get }
    var idlingRPM: Int { get set }
    var doorsStatus: doorsStatus { get set }
    var engineStatus: engineStatus { get set }
    
    func setRPM(engineStatus: engineStatus)
}
extension Car {
    func openDoors (currentStatus: doorsStatus) {
        switch currentStatus {
        case .lock:
            print("Клик! Закрыто")
            self.doorsStatus = .lock
        case .unlock:
            print("Плик клик! Открыто")
            self.doorsStatus = .unlock
        }
    }
}
extension Car {
    func startEngine (currentStatus: engineStatus) {
        switch currentStatus {
        case .start:
            print("Врум! Запустился")
            self.engineStatus = .start
        case .stop:
            print("Тррпххх! Заглох")
            self.engineStatus = .stop
        }
    }
}

class diselCar: Car {
    func setRPM (engineStatus: engineStatus) {
        switch engineStatus {
        case .start:
            print("Обороты 500")
            self.idlingRPM = 500
        case .stop:
            print("Обороты 0")
            self.idlingRPM = 0
        }
    }
    var doorsStatus: doorsStatus
    var petrolType: petrolType
    var engineVolume: Float
    var idlingRPM: Int
    var engineStatus: engineStatus
    
    init (doorsStatus: doorsStatus, petrolType: petrolType, engineVolume: Float, idlingRPM: Int, engineStatus: engineStatus){
        self.doorsStatus = doorsStatus
        self.petrolType = petrolType
        self.engineVolume = engineVolume
        self.idlingRPM = idlingRPM
        self.engineStatus = engineStatus
    }
}
extension diselCar: CustomStringConvertible {
    var description: String {
        return "\n\nТекущий статус авто\n" + 
            "Двери \(doorsStatus)\n" + 
            "Тип топлива \(petrolType)\n" + 
            "Объем двигателя \(engineVolume)\n" + 
            "Обороты \(idlingRPM)\n" + 
            "Статус двигателя \(engineStatus)\n" 
    }
}

class benzineCar: Car {
    func setRPM (engineStatus: engineStatus) {
        switch engineStatus {
        case .start:
            print("Обороты 600")
            self.idlingRPM = 600
        case .stop:
            print("Обороты 0")
            self.idlingRPM = 0
        }
    }
    var doorsStatus: doorsStatus
    var petrolType: petrolType
    var engineVolume: Float
    var idlingRPM: Int
    var engineStatus: engineStatus
    
    init (doorsStatus: doorsStatus, petrolType: petrolType, engineVolume: Float, idlingRPM: Int, engineStatus: engineStatus){
        self.doorsStatus = doorsStatus
        self.petrolType = petrolType
        self.engineVolume = engineVolume
        self.idlingRPM = idlingRPM
        self.engineStatus = engineStatus
    }
}
extension benzineCar: CustomStringConvertible {
    var description: String {
        return "\n\nТекущий статус авто\n" + 
            "Двери \(doorsStatus)\n" + 
            "Тип топлива \(petrolType)\n" + 
            "Объем двигателя \(engineVolume)\n" + 
            "Обороты \(idlingRPM)\n" + 
            "Статус двигателя \(engineStatus)\n" 
    }
}


let honda = benzineCar(doorsStatus: .lock, petrolType: .benzine, engineVolume: 1.5, idlingRPM: 0, engineStatus: .stop)
honda.openDoors(currentStatus: .unlock)
honda.setRPM(engineStatus: .stop)
honda.setRPM(engineStatus: .start)
print(honda)

let ford = diselCar(doorsStatus: .lock, petrolType: .disel, engineVolume: 5.5, idlingRPM: 0, engineStatus: .stop)
ford.openDoors(currentStatus: .unlock)
ford.startEngine(currentStatus: .start)
ford.setRPM(engineStatus: .start)
print(ford)
ford.startEngine(currentStatus: .stop)
ford.setRPM(engineStatus: .stop)
print(ford)
