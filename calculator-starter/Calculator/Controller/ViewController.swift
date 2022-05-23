//
//  ViewController.swift
//  Calculator
//
//  Created by Trevor Walker on 1/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorReadings: UILabel!
    
    var inputs: String = ""
    var input1 = ""
    var input2 = ""
    var mathematicalOperator = ""
    var answer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clear()
    }
    
    func clear() {
        inputs = ""
        calculatorReadings.text = ""
    }
    
    func addToOutput(value: String) {
        inputs = inputs + value
        print(inputs)
        if mathematicalOperator == "" {
            input1 = inputs
        } else {
            input2 = inputs
        }
        calculatorReadings.text = inputs
    }
    
    func muliply() {
        let result = Int(input1)! * Int(input2)!
        calculatorReadings.text = "\(result)"
    }
    
    func divide() {
        let result = Int(input1)! / Int(input2)!
        calculatorReadings.text = "\(result)"
    }
    
    func add() {
        let result = Int(input1)! + Int(input2)!
        calculatorReadings.text = "\(result)"
    }
    
    func subtract() {
        let result = Int(input1)! - Int(input2)!
        calculatorReadings.text = "\(result)"
    }
    
    @IBAction func oneButtonTapped(_ sender: Any) {
        addToOutput(value: "1")
    }
    
    @IBAction func twoButtonTapped(_ sender: Any) {
        addToOutput(value: "2")
    }
    
    @IBAction func threeButtonTapped(_ sender: Any) {
        addToOutput(value: "3")
    }
    
    @IBAction func fourButtonTapped(_ sender: Any) {
        addToOutput(value: "4")
    }
    
    @IBAction func fiveButtonTapped(_ sender: Any) {
        addToOutput(value: "5")
    }
    
    @IBAction func sixButtonTapped(_ sender: Any) {
        addToOutput(value: "6")
    }
    
    @IBAction func sevenButtonTapped(_ sender: Any) {
        addToOutput(value: "7")
    }
    
    @IBAction func eightButtonTapped(_ sender: Any) {
        addToOutput(value: "8")
    }
    
    @IBAction func nineButtonTapped(_ sender: Any) {
        addToOutput(value: "9")
    }
    
    @IBAction func zeroButtonTapped(_ sender: Any) {
        addToOutput(value: "0")
    }
    
    @IBAction func multiplyButtonTapped(_ sender: Any) {
        inputs = ""
        mathematicalOperator = "x"
    }
    
    @IBAction func subtractButtonTapped(_ sender: Any) {
        inputs = input1
        addToOutput(value: "-")
        inputs = input2
        mathematicalOperator = "-"
    }
    
    @IBAction func addtionButtonTapped(_ sender: Any) {
        inputs = input1
        addToOutput(value: "+")
        input2 = inputs
        mathematicalOperator = "+"
    }
    
    @IBAction func divideButtonTapped(_ sender: Any) {
        inputs = input1
        addToOutput(value: "/")
        inputs = input2
        mathematicalOperator = "/"
    }
    
    @IBAction func equalButtonTapped(_ sender: Any) {
        if mathematicalOperator == "x" {
            muliply()
        } else if mathematicalOperator == "/" {
            divide()
        } else if  mathematicalOperator == "+"{
            add()
        } else if mathematicalOperator == "-"{
            subtract()
        }
       print(calculatorReadings.text)
        input1 = ""
        input2 = ""
        mathematicalOperator = ""
        inputs = ""
    }
} // End of class
