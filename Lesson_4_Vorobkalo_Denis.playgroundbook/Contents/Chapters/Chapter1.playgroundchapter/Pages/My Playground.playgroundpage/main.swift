

class car {
    
    enum Mark {
        case ford, renault, honda, bmw, mitsubishi, mazda, skoda
    }
    
    enum Transmission {
        case manual, robot, automatic, cvt
    }
    
    let mark: Mark
    let transmission: Transmission
    var hPower: Int
    var trunkCapacity: Int
    var trunkLoad: Int 
    var engineIsOn: Bool
    var windowsOpen: Bool
    //Экстры для спорт и грузового авто
    var boostControl: Float?
    var liftSuspension: Bool
    
//      init (launchControl: Bool, liftSuspension: Bool){
//          self.launchControl = launchControl
//          self.liftSuspension = liftSuspension
//      }
    
    init (mark: Mark, transmission: Transmission, hPower: Int, trunkCapacity: Int, trunkLoad: Int, engineIsOn: Bool, windowsOpen: Bool, boostControl: Float?, liftSuspension: Bool){
        self.mark = mark
        self.transmission = transmission
        self.hPower = hPower
        self.trunkCapacity = trunkCapacity
        self.trunkLoad = trunkLoad
        self.engineIsOn = engineIsOn
        self.windowsOpen = windowsOpen
        self.boostControl = boostControl
        self.liftSuspension = liftSuspension
    }
    
    enum testCar {
        case WindowsButton
        case StartEngine
        case StopEngine
        case TrunkUpload
        case TrunkUnload
    }
    
    func setBoost (value: Float?){
        if value != nil {
            self.boostControl = value!
        }else {
            print("boost rip")
        }
    }
    
    func setLift (){
        if 1 == 1 {
            self.liftSuspension = false
        }
    }
    
    func actionOnCar (actionName: testCar, myValue: Int?) {
        switch actionName {
        case .WindowsButton: 
            if windowsOpen {
                self.windowsOpen = false
                print ("Окна подняты вверх")
            }else {
                self.windowsOpen = true
                print ("Окна опущены вниз")
            }
        case .StartEngine:
            self.engineIsOn = true
            print ("Двигатель запущен")
        case .StopEngine:
            self.engineIsOn = false
            print ("Двигатель выключен")
        case .TrunkUpload:
            var cargo = Int()
            if myValue != nil {
                cargo = myValue!
            } else {
                print ("No cargo loaded")
            }
            var fulLoad: Int = cargo + trunkLoad
            if fulLoad <= trunkCapacity {
                self.trunkLoad = fulLoad
                print ("Loaded :\(cargo)")
            } else {
                print("Overload")
            }
        case .TrunkUnload:
            var cargo = Int()
            if myValue != nil {
                cargo = myValue!
            } else {
                print ("No cargo taken")
            }
            var fulLoad: Int = trunkLoad - cargo
            if fulLoad >= 0 {
                self.trunkLoad = fulLoad
                print ("Unloaded :\(cargo)")
            } else {
                print("Do not diassemble the car!")
            }
            
        default:
            print("No action") 
        }
    }
}
//var Honda = car(mark: .honda, transmission: .manual, hPower: 115, engineIsOn: true, windowsOpen: true)
//print(Honda.mark)
//var Mitsubishi = car(mark: .mitsubishi, transmission: .automatic, hPower: 98, engineIsOn: false, windowsOpen: false)
//print(Mitsubishi.mark)

class sportCar: car {
    override func setBoost (value: Float?){
        if value != nil {
            self.boostControl = value! * 2
            print("Давление наддува увеличено. Счастливого полета")
        }else {
            print("Нет давления наддува. Проверьте турбину")
        }
    }
}
var evolution = sportCar(mark: .mitsubishi, transmission: .manual, hPower: 280, trunkCapacity: 430, trunkLoad: 0, engineIsOn: false, windowsOpen: false, boostControl: nil, liftSuspension: false)
print("_______ДЕЙСТВИЯ НАД СПОРТИВНЫМ АВТО")
evolution.actionOnCar(actionName: .StopEngine, myValue: nil)
evolution.actionOnCar(actionName: .StartEngine, myValue: nil)
evolution.actionOnCar(actionName: .TrunkUpload, myValue: 20)
evolution.actionOnCar(actionName: .TrunkUpload, myValue: 20)
evolution.actionOnCar(actionName: .WindowsButton, myValue: nil)
evolution.actionOnCar(actionName: .WindowsButton, myValue: nil)
evolution.setBoost(value: nil)
print("_______ИТОГ. СПОРТИВНЫЙ АВТО")
print("Двигатель запущен: \(evolution.engineIsOn)")
print("Мощность: \(evolution.hPower)") 
print("Тип трансмиссии: \(evolution.transmission)")
print("Двигатель запущен: \(evolution.trunkCapacity)")
print("Загруженность багажника: \(evolution.trunkLoad)")
print("Давление наддува: \(evolution.boostControl)")

class offroadCar: car {
    override func setLift (){
        if 1 == 1 {
            self.liftSuspension = true
            print("Лифт подвески установлен. Нам болото дом родной")
        }
    }
}
var duster = offroadCar(mark: .renault, transmission: .manual, hPower: 140, trunkCapacity: 530, trunkLoad: 240, engineIsOn: false, windowsOpen: false, boostControl: nil, liftSuspension: false)
print("_______ДЕЙСТВИЯ НАД ВНЕДОРОЖНЫМ АВТО")
duster.actionOnCar(actionName: .StopEngine, myValue: nil)
duster.actionOnCar(actionName: .StartEngine, myValue: nil)
duster.actionOnCar(actionName: .TrunkUpload, myValue: 20)
duster.actionOnCar(actionName: .TrunkUpload, myValue: 20)
duster.actionOnCar(actionName: .WindowsButton, myValue: nil)
duster.actionOnCar(actionName: .WindowsButton, myValue: nil)
duster.setLift()
print("_______ИТОГ. ВНЕДОРОЖНЫЙ АВТО")
print("Двигатель запущен: \(duster.engineIsOn)")
print("Мощность: \(duster.hPower)") 
print("Тип трансмиссии: \(duster.transmission)")
print("Двигатель запущен: \(duster.trunkCapacity)")
print("Загруженность багажника: \(duster.trunkLoad)")
print("Лифт подвески установлен: \(duster.boostControl)")
