//
//  ViewController.swift
//  TemperatureConvertor
//
//  Created by Taras Myza on 9/28/19.
//  Copyright © 2019 Taras Myza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsField: UITextField!
    @IBOutlet weak var fahrField: UITextField!
    @IBOutlet weak var celToFahr: UIButton!
    @IBOutlet weak var theConvertLable: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func celToFahr(_ sender: Any) {
        let textfieldCel: Int? = Int(celsField.text!)
        if textfieldCel == 0 {
            let fahr = (9/5 * textfieldCel!) + 32
            theConvertLable.text = "\(fahr) Fahrenheit."
            view.backgroundColor = UIColor.green
        }else {
            let textfieldCel: Float? = Float(celsField.text!)
            let fahr = (9/5 * textfieldCel!) + 32
            theConvertLable.text = "\(fahr) Fahrenheit."
            view.backgroundColor = UIColor.green
        }
    }
    
    @IBAction func fahrToCel(_ sender: Any) {
        let textfieldFahr: Int? = Int(fahrField.text!)
        if textfieldFahr == 0 {
            let textfieldFahr: Float? = Float(fahrField.text!)
            let cels = (textfieldFahr! - 32) * 5/9
            let cels_conv = NSString(format:"%.1f", cels)
            theConvertLable.text = "\(cels_conv) Degrees."
            view.backgroundColor = UIColor.yellow
        }else {
            let textfieldFahr: Float? = Float(fahrField.text!)
            let cels = 5/9 * (textfieldFahr! - 32)
            let cels_conv = NSString(format:"%.1f", cels)
            theConvertLable.text = "\(cels_conv) Degrees."
            view.backgroundColor = UIColor.yellow
        }
    }
}

