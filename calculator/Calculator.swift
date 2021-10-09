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
    @Published var  displayValue  = "0" //redrawn when its varibale value is changed
    
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
            operatorPressed(op: Operator(label))
        }

    }
    func setDusplayValue(number:Double){
        //dont dipslay decimal if number is integer
        if number == floor(number){
        displayValue = "\(Int(number))"
        }
        else{
            let decimalPlaces = 10
            displayValue = "\(round(number * pow(10, decimalPlaces)) / pow(10, decimalPlaces))"
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
        // if equaled was pressed, clear the current numbers
        if equaled{
            currentNumber = nil
            previousNumber = nil
            equaled = false
        }
        //if there is no current number set ot to the value
        if(currentNumber == nil){
            currentNumber = value / pow(10, decimalPlace)
        }
        // otherwise, add the value to current number
        else{
           // if no decimal was typed
            if decimalPlace == 0{
                currentNumber = currentNumber! * 10 + value
            //otherwise, add value as the last decimal of the number
            }
            else{
                currentNumber = currentNumber! + value / pow(10, decimalPlace)
                decimalPlace += 1
            }
        }
        // update UI
        setDusplayValue(number: currentNumber!)
        
        
        
    }
    
    func operatorPressed(op: Operator){
        //reset decimal
        decimalPlace = 0
        //if equals was presses , reste the current number
        if equaled{
            currentNumber = nil
            equaled = false
        }
        //if we have 2 oprands compute them
        if currentNumber != nil && previousNumber != nil{
            let total = currentOp!.op(previousNumber!, currentNumber!)
            previousNumber = total
            currentNumber = nil
            
            //ui update
            setDusplayValue(number: total)
            
            //if only 1 number was given, move it to the previous operand
            
        } else if previousNumber == nil {
            previousNumber = currentNumber
            currentNumber = nil
        }
    currentOp = op
    }
    
    
}


func pow(_ base:Int, _ exp:Int) -> Double {
    return pow(Double(base), Double(exp))
}
