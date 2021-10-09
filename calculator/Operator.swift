//
//  Operator.swift
//  calculator
//
//  Created by Aizaz on 09/10/2021.
//

import Foundation

class Operator{
    
    var op: (Double, Double) -> Double
    var isDivison = false
    
    init(_ string:String){
        if string == "+"
        {
            self.op = (+)
            
        } else if string == "-" {
            self.op = (-)
        }
        else if string == String ("\u{00f7}"){
            self.op = (*)
        }
        else {
            self.op = (/)
            self.isDivison = true
        }
        
    }
    
    
}
