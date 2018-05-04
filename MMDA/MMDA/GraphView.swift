//
//  GraphView.swift
//  MMDA
//
//  Created by Michael Pine on 4/7/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit
import Charts


class GraphView: UIViewController  {
    
    @IBOutlet weak var chtChart: LineChartView!
    
    
    @IBOutlet weak var txtTextBox: UITextField!
    @IBAction func goButton(_ sender: Any) {
        let input = Double(txtTextBox.text!)
            visitors.append(input!)
        updateGraph()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateGraph(){
        var lineChartEntry = [ChartDataEntry]()
        
        for i in 0..<visitors.count{
            let value = ChartDataEntry(x: Double(i), y: visitors[i])
            lineChartEntry.append(value)
        }
        let line1 = LineChartDataSet(values: lineChartEntry, label: "numbers")
        line1.colors = [NSUIColor.blue]
        let data = LineChartData()
        data.addDataSet(line1)
        chtChart.data = data
        
    }

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        //listenForChartUpdates()
       
    }

    var visitors:[Double] = []

}
