//
//  ViewController3.swift
//  MMDA
//
//  Created by Michael Pine on 4/19/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var hospLabel: UILabel!

    @IBOutlet weak var complaintField: UITextField!
    @IBOutlet weak var birthField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var traumaSwitch: UISwitch!
    @IBOutlet weak var cardiacSwitch: UISwitch!
    @IBOutlet weak var strokeSwitch: UISwitch!
    var labelText = ""
  
    override func viewDidLoad() {
        super.viewDidLoad()
        hospLabel.text = labelText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func reportButton(_ sender: Any) {
        print (nameField.text!)
        print (birthField.text!)
        print (complaintField.text!)
        if strokeSwitch.isOn{
            print ("Stroke Alert")
        }
        if cardiacSwitch.isOn{
            print ("Cardiac Arrest Alert")
        }
        if traumaSwitch.isOn{
            print ("Trauma Injury alert")
        }
    }
    
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
