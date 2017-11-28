//
//  popupDallas.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/29/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupDallas: UIViewController {

    @IBOutlet weak var mapDallas: MKMapView!
    
    @IBAction func mapDallas(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.154262
        let longitude: CLLocationDegrees = -96.835917
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Toyota Stadium - FC Dallas"
        mapItem.openInMaps(launchOptions: options)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.154262, -96.835917)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapDallas.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Toyota Stadium - FC Dallas"
        
        mapDallas.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopupImageDallas(_ sender: Any) {
        let popOverDallas = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popupdallasimage") as! popupDallasImage
        self.addChildViewController(popOverDallas)
        popOverDallas.view.frame = self.view.frame
        self.view.addSubview(popOverDallas.view)
        popOverDallas.didMove(toParentViewController: self)
    }
    
    @IBAction func closePopupDallas(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
