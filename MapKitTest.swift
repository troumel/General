//
//  ViewController.swift
//  Places
//
//  Created by macuser on 5/3/21.
//

import UIKit
import MapKit

class PlacesViewController: UIViewController, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var locationManager: CLLocationManager?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManager = CLLocationManager()
        locationManager?.requestWhenInUseAuthorization()
        
        locationManager?.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        locationManager?.distanceFilter = 50.0
        
        locationManager?.delegate = self
        locationManager?.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard mapView != nil else {
            return
        }
        
        guard let newLocation = locations.last else {
            return
        }
        
        let region = MKCoordinateRegion(center: newLocation.coordinate, latitudinalMeters: 200, longitudinalMeters: 200)
        let adjustedRegion = mapView!.regionThatFits(region)
        mapView!.setRegion(adjustedRegion, animated: true)
    }
}

