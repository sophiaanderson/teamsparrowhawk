//
//  GraphView.swift
//  MMDA
//
//  Created by Michael Pine on 4/7/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit
import Charts
import Alamofire

class GraphView: UIViewController  {
    

    
    @IBOutlet weak var chartView: LineChartView!
    
    
    @IBAction func simulateButtonPressed(_ sender: Any) {
        Alamofire.request("http://localhost:4000/simulate", method: .post).validate().responseJSON { (response) in
            switch response.result {
            case .success(_):
                _ = "Successful"
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    private func updateChart() {
        var chartEntry = [ChartDataEntry]()
        
        for i in 0..<visitors.count {
            let value = ChartDataEntry(x: Double(i), y: visitors[i])
            chartEntry.append(value)
        }
        
        let line = LineChartDataSet(values: chartEntry, label: "Visitor")
        line.colors = [UIColor.green]
        
        let data = LineChartData()
        data.addDataSet(line)
        
        chartView.data = data
        chartView.chartDescription?.text = "Visitors Count"
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }

    var visitors:[Double] = []

}
