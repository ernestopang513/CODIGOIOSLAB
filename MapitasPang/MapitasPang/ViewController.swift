//
//  raro.swift
//  MapitasPang
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 max. All rights reserved.
//

import Foundation

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate { 
    
    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager()
    //let location = CLLocation 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapa.delegate = self
        locationManager.delegate = self
        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        
        locationManager.startUpdatingLocation()
        mapa.showsUserLocation = true
        
        //let lat : CLLocationDistance = locationManager.
        
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.009, longitudeDelta: 0.009))
        
        mapa.setRegion(region, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print(locations)
    }
}



