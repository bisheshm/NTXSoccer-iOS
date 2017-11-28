//
//  searchBar.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/31/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class searchBar: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchMap: MKMapView!
    
    @IBOutlet weak var searchBar: UISearchBar!

    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(searchBar.text!) { (placemarks:[CLPlacemark]?, error:Error?) in
            if error == nil {
                let placemark = placemarks?.first
                
                let anno = MKPointAnnotation()
                anno.coordinate = (placemark?.location?.coordinate)!
                anno.title = self.searchBar.text!
                
                let span = MKCoordinateSpanMake(0.08, 0.08)
                let region = MKCoordinateRegion(center: anno.coordinate, span: span)
                
                self.searchMap.setRegion(region, animated: true)
                self.searchMap.addAnnotation(anno)
                self.searchMap.selectAnnotation(anno, animated: true)
                
            } else {
                print(error?.localizedDescription ?? "error")
            }
    }
    
    }
    
    @IBAction func closeSearchBar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
