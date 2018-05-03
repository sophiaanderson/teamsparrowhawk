//
//  ViewController.swift
//  MMDA
//
//  Created by Michael Pine on 4/7/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func graphButton(_ sender: UIButton) {
        performSegue(withIdentifier: "graphSeg", sender: self)
    }
    @IBAction func hospButton(_ sender: Any) {
        performSegue(withIdentifier: "hospitalSeg", sender: self)
    }
    
}

