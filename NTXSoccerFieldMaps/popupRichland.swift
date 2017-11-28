//
//  popupRichland.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/26/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupRichland: UIViewController {
    
    @IBOutlet weak var mapRichland: MKMapView!
    
    
    @IBAction func richlandDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 32.924484
        let longitude: CLLocationDegrees = -96.731796
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Richland College"
        mapItem.openInMaps(launchOptions: options)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(32.924484, -96.731796)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapRichland.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "MoneyGram Soccer Park"
        
        mapRichland.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showPopupRichland(_ sender: Any) {
        let popOverRichland = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popuprichlandimage") as! popupRichlandImage
        self.addChildViewController(popOverRichland)
        popOverRichland.view.frame = self.view.frame
        self.view.addSubview(popOverRichland.view)
        popOverRichland.didMove(toParentViewController: self)
    }
    
    @IBAction func closePopupRichland(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
