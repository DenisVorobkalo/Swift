
// Задание 1
struct car {
    var Mark = String ()
    var year = Int ()
    var trunkCapacity = Int ()
    var trunkLoad = Int ()
    var engineIsOn = Bool ()
    var windowsOpen = Bool ()
    
    mutating func actionOnCar (actionName: String, myValue: Int?) {
        enum testCar {
            case WindowsButton (open: Bool)
            case Engine (On: Bool)
            case TrunkUpload (load: Int)
            case TrunkUnload (load: Int)
        }
        switch actionName {
        case "WindowsButton": 
            if windowsOpen {
                self.windowsOpen = false
                print ("Windows up")
            }else {
                self.windowsOpen = true
                print ("Windows down")
            }
            case "StartEngine":
                self.engineIsOn = true
                case "StopEngine":
                    self.engineIsOn = false
                    case "TrunkUpload":
                        var cargo = Int()
                        if myValue != nil {
                            cargo = myValue!
                            } else {
                            print ("No cargo loaded")
                        }
                        var fulLoad: Int = cargo + trunkLoad
                        if fulLoad <= trunkCapacity {
                            self.trunkLoad = fulLoad
                            print ("Current load \(fulLoad)")
                        } else {
                            print("Overload")
                        }
                        case "TrunkUnload":
                            var cargo = Int()
                            if myValue != nil {
                                cargo = myValue!
                            } else {
                                print ("No cargo taken")
                            }
                            var fulLoad: Int = trunkLoad - cargo
                            if fulLoad >= 0 {
                                self.trunkLoad = fulLoad
                                print ("Current load \(fulLoad)")
                            } else {
                                print("Do not diassemble the car!")
                            }
        
        default:
            print("No action") 
        }
    }
}
// Задание 2

var Car1 = car ( Mark: "Skoda", year: 2014, trunkCapacity: 568, trunkLoad: 40, engineIsOn: false, windowsOpen: false)
print(Car1)

var Car2 = car ( Mark: "Mitsubishi", year: 2006, trunkCapacity: 430, trunkLoad: 200, engineIsOn: true, windowsOpen: false)
print(Car2)

//  enum action {
//      case WindowsButton
//      case StartEngine
//      case StopEngine
//      case TrunkUpload (Int)
//      case TrunkUnload (Int)
//  }

Car2.actionOnCar(actionName: "WindowsButton", myValue: nil)
print(Car2)


