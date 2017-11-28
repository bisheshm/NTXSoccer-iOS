//
//  popupRailroad.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/29/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupRailroad: UIViewController {
    
    @IBOutlet weak var mapRailroad: MKMapView!
    
    @IBAction func railroadDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.031367
        let longitude: CLLocationDegrees = -96.970466
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Lone Star Toyota of Lewisville Railroad Park"
        mapItem.openInMaps(launchOptions: options)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.031367, -96.970466)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapRailroad.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Lone Star Toyota of Lewisville Railroad Park"
        
        mapRailroad.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showImageRailroad(_ sender: Any) {
        let popOverRailroad = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popupimagerailroad") as! popupImageRailroad
        self.addChildViewController(popOverRailroad)
        popOverRailroad.view.frame = self.view.frame
        self.view.addSubview(popOverRailroad.view)
        popOverRailroad.didMove(toParentViewController: self)
    }
    
    
    @IBAction func closePopupRailroad(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
