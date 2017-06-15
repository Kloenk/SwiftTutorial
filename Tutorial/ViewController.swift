//
//  ViewController.swift
//  Tutorial
//
//  Created by admin on 15.06.17.
//  Copyright © 2017 Learning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var NameTextField: UIStackView!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: Any) {
        mealNameLabel.text = "Hallo Welt!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

