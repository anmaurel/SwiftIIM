import UIKit

var myvar: String = "var ok"
myvar = "new val"

let myconst: Int = 5

var students: [String] = ["un", "deux", "trois"]

print("P1")

print("My tests : \(myvar) | \(myconst) | \(students[0])")

print("\nP2")

for student in students {
    print(student)
}

for index in 0..<students.count {
    print(students[index])
}

var dicts: [String: Float] = [
    "e1" : 10.14,
    "e2" : 12.65,
]

print("\nP3")

var adress: String?

adress = nil

let adresstoDisplay = adress ?? "default val"

print(adresstoDisplay)

print("\nP4")

if adress == nil {
    
} else if adress == "test" {
    
}

adresstoDisplay.contains("e") ? print("true") : print("false")

print("\nP5")

func sayBjr(_ name: String) -> String {
    return "Hello \(name) !"
}

let toDisplay = sayBjr("me")
print(toDisplay)

print("\nP6")

struct Engine {
    let power: Int
    let type: String
}

class Vehicle {
    let seatsCount: Int
    let engine: Engine
    
    init(seatsCount: Int, engine: Engine) {
        self.seatsCount = seatsCount
        self.engine = engine
    }
}

let myEngine = Engine(power: 560, type: "Hybrid")
let myVehicle = Vehicle(seatsCount: 5, engine: myEngine)

print("\nP7")

protocol VehicleSpe {
    func drive()
    func stop()
}

protocol Loadable {
    func load()
}

class Truck: VehicleSpe {
    func drive() {
        print("drive")
    }
    
    func stop() {
        print("stop")
    }
}

print("\nP8")

enum EngineType {
    case gas
    case electric
}

extension Truck: Loadable {
    func load() {}
}

print("\nP9")

var time: Int = 100

extension Int {
    func calcMin() -> Float {
        return Float(self) / 60.0
    }
}

print(time.calcMin())
