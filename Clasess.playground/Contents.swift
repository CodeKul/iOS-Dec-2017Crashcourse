//: Playground - noun: a place where people can play

import UIKit


class ClassName {
    
    var myElement1 : String
    var myElement2 : Int
    var myElement3 : Double
    
    init() {
        myElement1 = ""
        myElement2 = 0
        myElement3 = 0.0
    }
    
    init(myElement1 : String, myElement2 : Int, myElement3 : Double) {
        self.myElement1 = myElement1
        self.myElement2 = myElement2
        self.myElement3 = myElement3
    }
    
    init(obj : ClassName) {
        self.myElement1 = obj.myElement1
        self.myElement2 = obj.myElement2
        self.myElement3 = obj.myElement3
    }
    
    func display() {
        print("Element1: \(myElement1)\nElement2 : \(myElement2)\nElement3 : \(myElement3)")
    }
}


var obj1 = ClassName()
var obj2 = ClassName(myElement1: "Fist", myElement2: 2, myElement3: 3.0)
obj1.display()
obj2.display()
var obj3 = ClassName(obj: obj2)
obj3.display()

