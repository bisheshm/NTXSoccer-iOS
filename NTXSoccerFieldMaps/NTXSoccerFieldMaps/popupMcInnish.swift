//
//  popupMcInnish.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/8/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupMcInnish: UIViewController {

    @IBOutlet weak var mapMcInnish: MKMapView!
    
    @IBAction func mcinnishDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 32.964561
        let longitude: CLLocationDegrees = -96.938051
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "McInnish Soccer Complex"
        mapItem.openInMaps(launchOptions: options)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(32.964561, -96.938051)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapMcInnish.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "McInnish Soccer Complex"
        
        mapMcInnish.addAnnotation(annotation)

    }
    
    
   
    @IBAction func showMcinnishmage(_ sender: Any) {
        let popOverMcinnish = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mcinnishimagepopup") as! popupMcinnishImage
        self.addChildViewController(popOverMcinnish)
        popOverMcinnish.view.frame = self.view.frame
        self.view.addSubview(popOverMcinnish.view)
        popOverMcinnish.didMove(toParentViewController: self)
    }
    
    @IBAction func closePopupMcInnish(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
