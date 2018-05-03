//
//  ViewController2.swift
//  MMDA
//
//  Created by Michael Pine on 4/19/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class ViewController2: UIViewController {

    private let locationManager = CLLocationManager()
    @IBOutlet weak var mapView: GMSMapView!
    //private let dataProvider = GoogleDataProvider()
    //private let searchRadius: Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func hosp1Button(_ sender: Any) {
    }
    @IBAction func hosp2Button(_ sender: Any) {
    }
    @IBAction func hosp4Button(_ sender: Any) {
    }
    @IBAction func hosp3Button(_ sender: Any) {
    }
    @IBAction func hosp5Button(_ sender: Any) {
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination
        if let hospitalVC = destinationVC as? ViewController3,
            let identifier = segue.identifier,
            let labelVC = labelSegue[identifier] {
                hospitalVC.labelText = labelVC
        }
    }
    
    private let labelSegue: Dictionary<String, String> = [
        "hosp1seg":"Lahey Hospital",
        "hosp2seg": "Mass General Hospital",
        "hospTrashseg": "Tufts Medical Center",
        "hosp4seg":"Beth Isreal Hospital",
        "hosp5seg":"Brigham and Womens Hospital"
    ]
}
extension ViewController2: CLLocationManagerDelegate {
    // 2
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // 3
        guard status == .authorizedWhenInUse else {
            return
        }
        // 4
        locationManager.startUpdatingLocation()
        
        //5
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
    }
    
    // 6
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        
        // 7
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        
        // 8
        locationManager.stopUpdatingLocation()
    }/*
    private func fetchNearbyPlaces(coordinate: CLLocationCoordinate2D) {
        // 1
        mapView.clear()
        // 2
        dataProvider.fetchPlacesNearCoordinate(coordinate, radius:searchRadius, types: searchedTypes) { places in
            places.forEach {
                // 3
                let marker = PlaceMarker(place: $0)
                // 4
                marker.map = self.mapView
            }
        }
    }*/
}

