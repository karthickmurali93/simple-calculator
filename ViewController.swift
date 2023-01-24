//
//  ViewController.swift
//  calculatertask
//
//  Created by mac on 26/09/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lanumber: UILabel!
    @IBOutlet weak var lable: UILabel!
    override func viewDidLoad() {
        lable.text = "calculator"
        lable.textColor = .red
        
        super.viewDidLoad()
        
    }
    var newOperation=true
    func AddNumberToInput(number:String){
        var textnumber = String(lanumber.text!)
        if newOperation {
            textnumber = ""
            newOperation = false
    }
        textnumber = textnumber + number
        lanumber.text = textnumber
    }
    @IBAction func bu0(_ sender: UIButton) {
        AddNumberToInput(number:"0")
    }
    @IBAction func budot(_ sender: UIButton) {
        AddNumberToInput(number:".")
    }
    @IBAction func bu1(_ sender: UIButton) {
        AddNumberToInput(number:"1")
    }
    @IBAction func bu2(_ sender: UIButton) {
        AddNumberToInput(number:"2")
    }
    @IBAction func bu3(_ sender: UIButton) {
        AddNumberToInput(number:"3")
    }
    @IBAction func bu4(_ sender: UIButton) {
        AddNumberToInput(number:"4")
    }
    @IBAction func bu5(_ sender: UIButton) {
        AddNumberToInput(number:"5")
    }
    @IBAction func bu6(_ sender: UIButton) {
        AddNumberToInput(number:"6")
    }
    @IBAction func bu7(_ sender: UIButton) {
        AddNumberToInput(number:"7")
    }
    @IBAction func bu8(_ sender: UIButton) {
        AddNumberToInput(number:"8")
    }
    @IBAction func bu9(_ sender: UIButton) {
        AddNumberToInput(number:"9")
    }
    var op = "+"
    var number1:Double?
    @IBAction func bumul(_ sender: UIButton) {
        op = "*"
        number1 = Double( lanumber.text! )
        newOperation = true
    }
    @IBAction func budiv(_ sender: UIButton) {
        op = "/"
        number1 = Double( lanumber.text! )
        newOperation = true
    }
    @IBAction func busub(_ sender: UIButton) {
        op = "-"
        number1 = Double( lanumber.text! )
        newOperation = true
    }
    @IBAction func buadd(_ sender: UIButton) {
        op = "+"
        number1 = Double( lanumber.text! )
        newOperation = true
    }
    @IBAction func buper(_ sender: UIButton) {
        var number1 = Double( lanumber.text! )
        
        number1 = (number1!/100)
        lanumber.text = String(number1!)
        newOperation = true
        
    }
    @IBAction func buac(_ sender: UIButton) {
        lanumber.text = "0"
        newOperation = true
    }
    @IBAction func buequal(_ sender: UIButton) {
        let number2 = Double( lanumber.text!)
        var result:Double?
        switch op {
        case "*":
                result = number1! * number2!
        case "/":
                result = number1! / number2!
        case "-":
                result = number1! - number2!
        case "+":
                result = number1! + number2!
            
        default:
            result = 0
        }
        lanumber.text = String(result!)
     newOperation = true
    }
}
