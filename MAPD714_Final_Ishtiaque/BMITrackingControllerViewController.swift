//
//  BMITrackingControllerViewController.swift
//  MAPD714_Final_Ishtiaque
//
//  Created by Ishtiaque Ahmed on 12/17/21.
//

import UIKit


class BMITrackingControllerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weight.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
      //  weightLbl.text = weight
        cell.textLabel?.text = "Name: \(name) Weight: \(weight) Height \(height)"
       // cell.textLabel?.text = "weight"
        return cell
    }
    
    //var BMIdata = []
    
    @IBOutlet var tableView: UITableView!

    var name = "Anonynmous"
    var weight = ""
    var height = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}


 
