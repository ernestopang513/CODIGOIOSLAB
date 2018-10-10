





/*
//
//  ViewController.swift
//  MapitasPang
//
//  Created by Macbook on 10/10/18.
//  Copyright © 2018 max. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation




class ViewController: UIViewController, MKMapViewDelegate , CLLocationManagerDelegate {
    @IBOutlet weak var mapa: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        mapa.delegate = self
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        mapa.showsUserLocation = true
        
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegion(center: mapa.userLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.009  , longitudeDelta: 0.009))
        mapa.setRegion(region, animated: true)
        
        
    }
    
    
    
}

 */
