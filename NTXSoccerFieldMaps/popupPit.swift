//
//  popupPit.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/29/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupPit: UIViewController {
    
    @IBOutlet weak var mapPit: MKMapView!
    
    @IBAction func pitDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.014637
        let longitude: CLLocationDegrees = -96.649657
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "The Pit Plus Soccer Complex"
        mapItem.openInMaps(launchOptions: options)

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(33.014637, -96.649657)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapPit.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "The Pit Plus Soccer Complex"
        
        mapPit.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPopupImagePit(_ sender: Any) {
        let popOverPit = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "popuppitimage") as! popupPitImage
        self.addChildViewController(popOverPit)
        popOverPit.view.frame = self.view.frame
        self.view.addSubview(popOverPit.view)
        popOverPit.didMove(toParentViewController: self)

    }
    
    @IBAction func closePopupPit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
