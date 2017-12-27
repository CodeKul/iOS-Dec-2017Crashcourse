//: Playground - noun: a place where people can play

import UIKit

class A {
    
    var a : Int
    
    init() {
        a = 0
    }
    
    init(a : Int) {
        self.a = a
    }
    
    init(obj : A) {
        self.a = obj.a
    }
    
    func display() {
        print("Data : \(a)")
    }
}

class B : A {
    
    var b : Int
    
    override init() {
        b = 0
        super.init()
    }
    
    init(b : Int) {
        self.b = b
        super.init(a : b)
    }
    
    init(obj : B) {
        self.b = obj.b
        super.init()
    }
    
    override func display() {
        print("Data : \(b)")
    }
}

class C : B {
    
    override func display() {
        print("This is of class C")
    }
    
    func classCMethod () {
        
        print("classCMethod")
    }
}

var c = C()

c.display()

c.classCMethod()










