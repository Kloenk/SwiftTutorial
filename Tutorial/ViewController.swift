//
//  ViewController.swift
//  Tutorial
//
//  Created by admin on 15.06.17.
//  Copyright © 2017 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var TextInputField: UITextField!
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        setTextFildd(TextInputField, mealNameLabel)
        TextInputField.resignFirstResponder()
        
    }
    
    //MARK: text field
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //mealNameLabel.text = textField.text
        setTextFildd(textField, mealNameLabel)
    }
    
    //MARK: own functions
    func setTextFildd(_ textFiled: UITextField, _ labe: UILabel) {
        if textFiled.text?.count == 0 {
            labe.text = "Bitte setze einen Text"
        } else {
            labe.text = textFiled.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TextInputField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

