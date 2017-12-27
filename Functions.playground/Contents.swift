//: Playground - noun: a place where people can play

import UIKit

func functionName () {
    print("Simple function")
}

functionName()


func function (withParams : String) {
    
    print("Prameterized function: \(withParams)")
}

function(withParams: "Any string")

func functionWithReturnType () -> String {
    
    return "This is functionWithReturnType"
}

var str = functionWithReturnType()

print(str)
