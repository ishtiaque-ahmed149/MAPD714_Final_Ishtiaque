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
    
    @IBOutlet weak var genderr: UITextField!
    @IBOutlet weak var agee: UITextField!
    @IBOutlet weak var weightt: UITextField!
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var BMIshow: UILabel!
    @IBOutlet weak var helloname: UILabel!
   
    @IBOutlet weak var BMImsgLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func Done(_ sender: Any) {
        let weight1 = weightt.text
        let height1 = heightt.text
        let name1 = namee.text
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BMITrackingController") as! BMITrackingControllerViewController
        
        vc.weight = weight1!
        vc.height = height1!
        vc.name = name1!
        self.navigationController?.pushViewController(vc , animated: true)
    }
    
    @IBAction func ClearAll(_ sender: Any)
    {
        namee.text!=""
        agee.text!=""
        genderr.text!=""
        weightt.text!=""
        heightt.text!=""
        BMIshow.text!="00"
        BMImsgLabel.text!="Normal"
        helloname.text!="hello"
    }
    @IBAction func BMIresult(_ sender: Any)
    {
        if (self.weightt.text!=="" || self.heightt.text!=="")
        {
            let alertController = UIAlertController(title: "You left Empty Field(s)", message:
                "Please enter both height and weight", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))

            self.present(alertController, animated: true, completion: nil)
            
        }
        else
        {
            let weightt = Double(self.weightt.text!)!
            let heightt = Double(self.heightt.text!)!
            
            if switch1.isOn
            {
                var bmi = Double(weightt/(heightt*heightt))
                self.helloname.text = "Hello, " + self.namee.text!
                self.BMIshow.text = String(format:"%2f", bmi)
                
                if (bmi < 16)
                { self.BMImsgLabel.text = "Severe Thinness"}
                else if (bmi >= 16 && bmi < 17)
                { self.BMImsgLabel.text = "Moderate Thinness"}
                else if (bmi >= 17 && bmi < 18.5)
                { self.BMImsgLabel.text = "Mild Thinness"}
                else if (bmi >= 18.5 && bmi < 25)
                { self.BMImsgLabel.text = "Normal"}
                else if (bmi >= 25 && bmi < 30)
                { self.BMImsgLabel.text = "Overweight"}
                else if (bmi >= 30 && bmi < 35)
                { self.BMImsgLabel.text = "Obese Class I"}
                else if (bmi >= 35 && bmi <= 40)
                { self.BMImsgLabel.text = "Obese Class II"}
                else if (bmi > 40)
                { self.BMImsgLabel.text = "Obese Class III"}
            }
                
            else
            {
                var bmi = Float((weightt*703)/(heightt*heightt))
                self.helloname.text = "Hello, " + self.namee.text!
                self.BMIshow.text = String(format:"%2f", bmi)
                
                if (bmi < 16)
                { self.BMImsgLabel.text = "Severe Thinness"}
                else if (bmi >= 16 && bmi < 17)
                { self.BMImsgLabel.text = "Moderate Thinness"}
                else if (bmi >= 17 && bmi < 18.5)
                { self.BMImsgLabel.text = "Mild Thinness"}
                else if (bmi >= 18.5 && bmi < 25)
                { self.BMImsgLabel.text = "Normal"}
                else if (bmi >= 25 && bmi < 30)
                { self.BMImsgLabel.text = "Overweight"}
                else if (bmi >= 30 && bmi < 35)
                { self.BMImsgLabel.text = "Obese Class I"}
                else if (bmi >= 35 && bmi <= 40)
                { self.BMImsgLabel.text = "Obese Class II"}
                else if (bmi > 40)
                { self.BMImsgLabel.text = "Obese Class III"}
            }
        }
        

    }
    
}





//References: https://www.ioscreator.com/tutorials/display-alert-ios-tutorial
