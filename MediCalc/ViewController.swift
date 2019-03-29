//
//  ViewController.swift
//  MediCalc
//
//  Created by Anh Ngo on 3/27/19.
//  Copyright © 2019 Anh Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var hamLuongTextField: UITextField!
    @IBOutlet weak var mlTextField: UITextField!
    @IBOutlet weak var hamLuongCanTextfield: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet weak var calculateBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        calculateBtn.isUserInteractionEnabled = false
//        calculateBtn.alpha = 0.5
        
    }
    
    
    @IBAction func docalculation(_ sender: Any) {
       
        if allFilled() {
            let hamluong = Float(hamLuongTextField.text!)
            let ml = Float(mlTextField.text!)
            let hlCan = Float(hamLuongCanTextfield.text!)
            
            let num = Float((hlCan! * ml!)/hamluong!)
            let resultString = String(num)
            
            resultLable.text = resultString
        } else {
            resultLable.text = "K. để trống"
        }
    
    }
    
    
    func allFilled() -> Bool {
        let hamLuong = hamLuongTextField.text
        let ml = mlTextField.text
        let hamLuongCan = hamLuongCanTextfield.text
        
        if (hamLuong != "" && ml != "" && hamLuongCan != "") {
            return true
        } else { return false }
    }
}





