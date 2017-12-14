//
//  ViewController.swift
//  GoogleMapsTest
//
//  Created by Jamee Krzanich on 12/8/17.
//  Copyright © 2017 Jamee Krzanich. All rights reserved.
//

import UIKit
import GoogleMaps
struct Location{
    let name:String
    let long: CLLocationDegrees
    let lat: CLLocationDegrees
}
class ViewController: UIViewController {
    
    let locations = [Location(name: "San Francisco", long: -122.4194, lat: 37.7749),
                  Location(name: "los Angeles", long: -118.2437, lat: 34.0522),]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    override func loadView() {
        
        let mapPosition = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom:3)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: mapPosition)
        view = mapView
        
        for location in locations {
            let state_marker = GMSMarker()
            state_marker.position = CLLocationCoordinate2D(latitude: location.lat, longitude: location.long)
            state_marker.title = location.name
            
            state_marker.map = mapView
        }
        // Creates a marker in the center of the map.
       /* let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194)
        marker.title = "San Francisco"
        marker.snippet = "California"
        marker.map = mapView
        
        let marker1 = GMSMarker()
      
        marker1. = CLLocationCoordinate2D(latitude: -43, longitude: 89)
        print("test 1")
        marker1.map = mapView
        print("test 2")*/
    }
//-43 && 89
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

