//  ViewController.swift
//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/16/21.
//  Final Exam, MAPD714 (iOS development)
//  Changes Made: First UI attemp (Dec 15th), Changed looks of the UI from the first attempt, added launchscreen (Dec 16th), completed first screen with getting proper results switching mertic/emperial (Dec 16th),
//  Description: This is a BMI Calculator with 2 screens and database capabilities.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var namee: UITextField!
    
    @IBOutlet weak var weightt: UITextField!
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var BMIshow: UILabel!
    @IBOutlet weak var helloname: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func BMIresult(_ sender: Any)
    {
        let weightt = Float(self.weightt.text!)!
        let heightt = Float(self.heightt.text!)!
        if switch1.isOn
        {
            let bmi = Float(weightt/(heightt*heightt))
            self.helloname.text = "Hello, " + self.namee.text!
            self.BMIshow.text = String(format:"%2f", bmi)
        }
        else
        {
            let bmi = Float((weightt*703)/(heightt*heightt))
            self.helloname.text = "Hello, " + self.namee.text!
            self.BMIshow.text = String(format:"%2f", bmi)
        }
    }
    
}

