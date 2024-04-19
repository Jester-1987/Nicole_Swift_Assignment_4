import Foundation

/* Instructions: You are tasked with creating a Swift program that models a camping trailer and its different systems using protocols and a class. The program should define protocols for managing the trailer's water system, electricity system, climate control, and entertainment system, each with specific properties and methods. Additionally, implement a class representing a camping trailer that conforms to these protocols.
 
 Requirements: Define any 2 of the 5 protocols, each protocol has:

 1 property related to the specific system.

 2 methods for managing or interacting with the system.

 Implement a class named Camper that conforms to any 2 of the 5 protocols.

 Ensure the class includes appropriate properties and methods to fulfill the requirements of each protocol.

 Protocols: (Define any 2 the following protocols)

 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(),                                          checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature:                              Double), adjustFanSpeed()
 
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()*/

protocol Trailer {
    var brand: String { get set }
    var engineIsOn: Bool { get set } // added so I can toggle engine on/off
    func startEngine()
    func stopEngine()
}

protocol EntertainmentSystem {
    var hasTV: Bool { get set }
    var tvIsOn: Bool { get set } // added so I can toggle TV on/off
    func turnOnTV()
    func turnOffTV()
}

class Camper : Trailer, EntertainmentSystem {
    var brand: String
    var engineIsOn: Bool
    var hasTV: Bool
    var tvIsOn: Bool
    
    init() {
        self.brand = "Airstream"
        self.engineIsOn = false // engine is off by default
        self.hasTV = false // no TV by default
        self.tvIsOn = false // TV is off by default
    }
    
    func startEngine() -> Void {
        //need to start the engine to go anywhere.
        if !self.engineIsOn {
            print("Engine has started.")
            self.engineIsOn = !self.engineIsOn
        }
        else {
            print("Engine has already started.")
        }
    } // startEngine()
    
    func stopEngine() -> Void {
        switch self.engineIsOn {
        case true:
            print("Engine has stopped.")
            self.engineIsOn = !self.engineIsOn
        default:
            print("Engine has already stopped.")
        } // switch statement
    } // stopEngine()
    
    func checkForTV() -> Void {
        if !self.hasTV {
            print("This \(self.brand) comes with a TV!") // added the brand so there's some function for it
        }
        else {
            print("Looks like we're going to be bored on this trip.")
        }
    } //checkForTV
    
    func turnOnTV() -> Void {
        if !self.tvIsOn {
            print("My favourite show is on!")
            self.tvIsOn = !self.tvIsOn
        }
        else {
            print("TV is already on, dummy.")
        }
    }
    
    func turnOffTV() -> Void {
        switch self.tvIsOn {
        case true:
            print("TV is now off!")
            self.tvIsOn = !self.tvIsOn
        default:
            print("Go find a book, the TV is OFF!")
            
        }
    }
}

var camper = Camper()

camper.startEngine()
camper.startEngine()
camper.stopEngine()
camper.stopEngine()
camper.checkForTV()
camper.turnOnTV()
camper.turnOnTV()
camper.turnOffTV()
camper.turnOffTV()


