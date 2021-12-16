//
//  ViewController.swift
//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/16/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namee: UITextField!
    
    @IBOutlet weak var weightt: UITextField!
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var BMIshow: UILabel!
    @IBOutlet weak var helloname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func BMIresult(_ sender: Any)
    {
        let weightt = Float(self.weightt.text!)!
        let heightt = Float(self.heightt.text!)!
        let bmi = Float(weightt/(heightt*heightt))
        self.helloname.text = "Hello, " + self.namee.text!
        self.BMIshow.text = String(format:"%2f", bmi)
    }
    
}

