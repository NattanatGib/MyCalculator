//
//  ViewController.swift
//  MyCalculator
//
//  Created by gibntn on 23/7/2563 BE.
//  Copyright © 2563 nattanat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    var viewModel: ViewModel = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.viewController = self
        setupView()
    }
    
    private func setupView() {
        DispatchQueue.main.async {
            self.clearButton.cornerRadius = (self.clearButton.frame.height/2)
            self.changeButton.cornerRadius = (self.changeButton.frame.height/2)
            self.percentButton.cornerRadius = (self.percentButton.frame.height/2)
            self.divideButton.cornerRadius = (self.divideButton.frame.height/2)
            self.plusButton.cornerRadius = (self.plusButton.frame.height/2)
            self.minusButton.cornerRadius = (self.minusButton.frame.height/2)
            self.multiplyButton.cornerRadius = (self.multiplyButton.frame.height/2)
            self.equalButton.cornerRadius = (self.equalButton.frame.height/2)
            self.dotButton.cornerRadius = (self.dotButton.frame.height/2)
            self.oneButton.cornerRadius = (self.oneButton.frame.height/2)
            self.twoButton.cornerRadius = (self.twoButton.frame.height/2)
            self.threeButton.cornerRadius = (self.threeButton.frame.height/2)
            self.fourButton.cornerRadius = (self.fourButton.frame.height/2)
            self.fiveButton.cornerRadius = (self.fiveButton.frame.height/2)
            self.sixButton.cornerRadius = (self.sixButton.frame.height/2)
            self.sevenButton.cornerRadius = (self.sevenButton.frame.height/2)
            self.eightButton.cornerRadius = (self.eightButton.frame.height/2)
            self.nineButton.cornerRadius = (self.nineButton.frame.height/2)
            self.zeroButton.cornerRadius = (self.zeroButton.frame.height/2)
        }
        
    }
    
    @IBAction func clearResult(_ sender: UIButton) {
        viewModel.clearResult()
    }
    
    @IBAction func selectNumber(_ sender: UIButton) {
        viewModel.didSelectNumberButton(name: sender.currentTitle)
    }
    
    @IBAction func selectOperator(_ sender: UIButton) {
        viewModel.didSelectOperatorButton(name: sender.currentTitle)
    }
    
    func display(number: String) {
        result.text = number
    }

}

