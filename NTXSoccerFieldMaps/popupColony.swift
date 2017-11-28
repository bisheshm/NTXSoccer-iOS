//
//  popupColony.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/29/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupColony: UIViewController {
    
    @IBOutlet weak var mapColony: MKMapView!
    
    @IBAction func colonyDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.075689
        let longitude: CLLocationDegrees = -96.882071
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "The Colony Five Star Complex"
        mapItem.openInMaps(launchOptions: options)

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.075689, -96.882071)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapColony.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "The Colony Five Star Complex"
        
        mapColony.addAnnotation(annotation)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopupColonyImage(_ sender: Any) {
        let popOverColony = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "popupcolonyimage") as! popupColonyImage
        self.addChildViewController(popOverColony)
        popOverColony.view.frame = self.view.frame
        self.view.addSubview(popOverColony.view)
        popOverColony.didMove(toParentViewController: self)
    }

   
    @IBAction func closePopupColony(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
