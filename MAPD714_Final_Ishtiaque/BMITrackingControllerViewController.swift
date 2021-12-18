//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/16/21.
//  Final Exam, MAPD714 (iOS development)
//  Changes Made: First UI attemp (Dec 15th), Changed looks of the UI from the first attempt, added launchscreen (Dec 16th), completed first screen with getting proper results switching mertic/emperial (Dec 16th), Made cells functional to print weight, bmi and current date (dec 17th)
//  Description: This is a BMI Calculator with 2 screens and database capabilities.

import UIKit


class BMITrackingControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //functions needed for cells
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weight.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

      //  weightLbl.text = weight
        cell.textLabel?.text = ("Weight: \(weight)   BMI: \(bmi)   Date \(date)")
       // cell.textLabel?.text = "weight"
        return cell
    }
    
 //creating a tableview
    
    @IBOutlet var tableView: UITableView!

    //creating necessary variables to show in cells
    var weight = ""
    var bmi = ""
    var date = NSDate()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


 
