//
//  Calculator.swift
//  calculator
//
//  Created by Aizaz on 09/10/2021.
//

import Foundation

class Calculator: ObservableObject{
   //******properties*******
    //used to upade the UI
    @Published var  displayValue  = "4" //redrawn when its varibale value is changed
    
    // store current operator
    var currentOp: Operator?
    
    // current number selected
    var currentNumber : Double? = 0
    
    // previous number seleced
    var previousNumber: Double?
    
    //flag for equal press
    
    
    var equaled = false
    
    //how many decimal places user typed
    var decimalPlace = 0
    
    //*****Methods******
    //Selects the appropriate function based on the label of the button pressed
    
    func buttonPressed(label:String){
        if label == "CE"
        {
            displayValue = "0"
            reset()
        }
        else if label == "="{
            equlesClicked()
        }
        else if label == "."{
            decimalClicked()
        }
        else if let value = Double(label){     //creating value from label to double
            numberPressed(value: value)
            
        }
        else{
            operatorPressed(op: Operator())
        }

    }
    // restets the state of the calculator
    func reset(){
        currentOp = nil
        currentNumber = 0
        previousNumber = nil
        equaled = false
        decimalPlace = 0
        
    }
    
    func equlesClicked(){
        
    }
    
    
    func decimalClicked(){
        
    }
    
    func numberPressed(value:Double){
        
    }
    
    func operatorPressed(op: Operator){
        
        
    }
    
}
