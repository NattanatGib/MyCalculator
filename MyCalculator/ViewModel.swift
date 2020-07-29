//
//  ViewModel.swift
//  MyCalculator
//
//  Created by gibntn on 23/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

enum Operators: String{
    case plus = "+"
    case minus = "-"
    case multiply = "*"
    case divide = "/"
    case percent = "%"
    case equal = "="
}

import UIKit

class ViewModel {
    //MARK: properties
    var numberText: String = "" //เลขแสดงบนหน้าจอ
    
    var result: Double = 0 { //ผลลัพธ์เปลี่ยนให้แสดงบนหน้าจอ
        didSet {
            viewController.display(number: "\(result)")
        }
    }
    
    var currentNumber: Double? //จำนวนเลขล่าสุด
    var operatorText: String = "" //+ - * / %
    var currentOperation: Operators? //operator ที่กดล่าสุด
    
    weak var viewController: ViewController!
    
    //MARK: methods
    func clearResult() {
        result = 0
        numberText = ""
        operatorText = ""
        currentNumber = nil
    }
    
    func didSelectNumberButton(name: String?) {
        if numberText.count == 0 , name == "0" { // ดักไม่ให้พิม 0 เยอะๆ
            return
        }
        
        if name == "+/-" {
            if numberText.contains("-") {
                numberText.removeSubrange(numberText.range(of: "-")!)
            } else {
                numberText = "-" + numberText
            }
        } else {
            numberText += name!
        }
        viewController.display(number: numberText)
        
    }
    
    func didSelectOperatorButton(name: String?) {
        guard let newInput = Double(numberText) else {
            currentOperation = Operators.init(rawValue: name!)
            return
        }
        currentNumber = newInput
        numberText = ""
        executeResult()
        currentOperation = Operators.init(rawValue: name!)
        
    }
        
    private func executeResult() {
        print("Current Input: \(currentNumber)\n========")
        guard let currentOperation = currentOperation else {
            result = currentNumber ?? 0
            return
        }
        print("currentOperation \(currentOperation)")
        
        //execute operation
        switch currentOperation {
        case .plus:
            result += currentNumber!
        case .minus:
            result -= currentNumber!
        case .multiply:
            result *= currentNumber!
        case .divide:
            result /= currentNumber!
        case .percent:
            break
//            result += currentNumber
        case .equal:
            break
        }
    }
}
