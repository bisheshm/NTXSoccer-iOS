//
//  popupUtdallas.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/31/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupUtdallas: UIViewController {
    
    @IBOutlet weak var mapUTD: MKMapView!
    
    @IBAction func directionsUTD(_ sender: Any) {
        let latitude: CLLocationDegrees = 32.985723
        let longitude: CLLocationDegrees = -96.750231
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "University of Texas at Dallas"
        mapItem.openInMaps(launchOptions: options)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(32.985723, -96.750231)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapUTD.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "University of Texas at Dallas"
        
        mapUTD.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    
    }
    
    @IBAction func showpopupUtd(_ sender: Any) {
        let popOverUtd = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popuputdimage") as! popupUtdimage
        self.addChildViewController(popOverUtd)
        popOverUtd.view.frame = self.view.frame
        self.view.addSubview(popOverUtd.view)
        popOverUtd.didMove(toParentViewController: self)
    }

    
    @IBAction func closePopupUTD(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
