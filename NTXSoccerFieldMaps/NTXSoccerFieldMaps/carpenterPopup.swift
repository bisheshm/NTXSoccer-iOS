//
//  carpenterPopup.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/8/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class carpenterPopup: UIViewController {
    
    @IBOutlet var addItemViewCarpenter: UIView!
    
    @IBOutlet weak var mapCarpenter: MKMapView!
    
    @IBAction func carpenterDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.063484
        let longitude: CLLocationDegrees = -96.771929
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Carpenter Park"
        mapItem.openInMaps(launchOptions: options)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.063484, -96.771929)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapCarpenter.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Carpenter Park"
        
        mapCarpenter.addAnnotation(annotation)
        
    }
    
    
    
    @IBAction func openCarpenterImage(_ sender: Any) {
        let popOverCarpenter = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "popupcarpenterimage") as! popupCarpenterImage
        self.addChildViewController(popOverCarpenter)
        popOverCarpenter.view.frame = self.view.frame
        self.view.addSubview(popOverCarpenter.view)
        popOverCarpenter.didMove(toParentViewController: self)
        
    }
    
    
    @IBAction func closePopupCarpenter(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
