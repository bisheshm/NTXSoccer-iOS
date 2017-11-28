//
//  popupRussellCreek.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/29/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupRussellCreek: UIViewController {
    
    @IBOutlet weak var mapRussellCreek: MKMapView!
    
    @IBAction func russellDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.097865
        let longitude: CLLocationDegrees = -96.759570
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Russell Creek Park"
        mapItem.openInMaps(launchOptions: options)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.097865, -96.759570)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapRussellCreek.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        
        annotation.title = "Russell Creek Park"
        
        mapRussellCreek.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopupRussellImage(_ sender: Any) {
        let popOverRussell = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "popuprussellimage") as! popupRussellImage
        self.addChildViewController(popOverRussell)
        popOverRussell.view.frame = self.view.frame
        self.view.addSubview(popOverRussell.view)
        popOverRussell.didMove(toParentViewController: self)
    }

   
    @IBAction func closePopupRussell(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
