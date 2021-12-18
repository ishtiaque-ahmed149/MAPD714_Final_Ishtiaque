//  ViewController.swift
//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/16/21.
//  Final Exam, MAPD714 (iOS development)
//  Changes Made: First UI attemp (Dec 15th), Changed looks of the UI from the first attempt, added launchscreen (Dec 16th), completed first screen with getting proper results switching mertic/emperial (Dec 16th), Made cells functional to print weight, bmi and current date (dec 17th)
//  Description: This is a BMI Calculator with 2 screens and database capabilities.

import UIKit

class ViewController: UIViewController {
    //creating weak variables for textfields and labels
    @IBOutlet weak var namee: UITextField!
    
    @IBOutlet weak var genderr: UITextField!
    @IBOutlet weak var agee: UITextField!
    @IBOutlet weak var weightt: UITextField!
    @IBOutlet weak var heightt: UITextField!
    
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var BMIshow: UILabel!
    @IBOutlet weak var helloname: UILabel!
   
    @IBOutlet weak var BMImsgLabel: UILabel!
    
   //viewDidLoad function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //creating function for when pressing DONE buton perform these tasks
    @IBAction func Done(_ sender: Any) {
        let weight1 = weightt.text
        let bmi1 = BMIshow.text
    
     //going to next screen
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BMITrackingController") as! BMITrackingControllerViewController
      //taking values to next screen from this screen
        vc.weight = weight1!
        vc.bmi = bmi1!

        self.navigationController?.pushViewController(vc , animated: true)
    }
    //on press of clear button do this
    @IBAction func ClearAll(_ sender: Any)
    {   //clearing all the fields
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
     //if switch is towards METRIC then do metric bmi calculation
            if switch1.isOn
            {
                var bmi = Double(weightt/(heightt*heightt))
                self.helloname.text = "Hello, " + self.namee.text!
                self.BMIshow.text = String(format:"%.\(2)f", bmi)
                
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
       //if the switch is turned towards EMPERIAL side then do emperial bmi calculation
            else
            {
                var bmi = Float((weightt*703)/(heightt*heightt))
                self.helloname.text = "Hello, " + self.namee.text!
                self.BMIshow.text = String(format:"%.\(2)f", bmi)
                
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
