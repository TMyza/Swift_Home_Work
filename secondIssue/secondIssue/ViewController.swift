//
//  ViewController.swift
//  secondIssue
//
//  Created by Taras Myza on 9/27/19.
//  Copyright © 2019 Taras Myza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theLabelText: UILabel!
    @IBOutlet weak var textEnterField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonChangeColour(_ sender: Any) {
        if textEnterField.text?.lowercased() == "red" || textEnterField.text?.lowercased() == "rod" || textEnterField.text?.lowercased() == "rud"{
            view.backgroundColor = UIColor.red
            theLabelText.text = "Red"
        }else if textEnterField.text?.lowercased() == "black"{
            view.backgroundColor = UIColor.black
            theLabelText.text = "Black"
            theLabelText.textColor = UIColor.white
        }else if textEnterField.text?.lowercased() == "green"{
            view.backgroundColor = UIColor.green
            theLabelText.text = "Green"
        }else if textEnterField.text?.lowercased() == "blue"{
            view.backgroundColor = UIColor.blue
            theLabelText.text = "Blue"
        }else if textEnterField.text?.lowercased() == "yellow"{
            view.backgroundColor = UIColor.yellow
            theLabelText.text = "Yellow"
        }else if textEnterField.text?.lowercased() == "orange"{
            view.backgroundColor = UIColor.orange
            theLabelText.text = "Orange"
        }else if textEnterField.text == ""{
            view.backgroundColor = UIColor.white
            theLabelText.text = "The Colour is ..."
        }

        
    }
    

}

