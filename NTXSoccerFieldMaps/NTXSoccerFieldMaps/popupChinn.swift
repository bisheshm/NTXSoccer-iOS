//
//  popupChinn.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/8/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupChinn: UIViewController {

    @IBOutlet weak var mapChinn: MKMapView!
    
    @IBAction func chinnDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 33.074342
        let longitude: CLLocationDegrees = -97.089677
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Chinn Chapel Soccer Complex"
        mapItem.openInMaps(launchOptions: options)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2DMake(33.074342, -97.089677)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapChinn.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Chinn Chapel Soccer Complex"
        
        mapChinn.addAnnotation(annotation)
        

    }

    @IBAction func showChinnImage(_ sender: Any) {
        let popOverChinn = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "chinnchapelimage") as! PopupChinnImage
        self.addChildViewController(popOverChinn)
        popOverChinn.view.frame = self.view.frame
        self.view.addSubview(popOverChinn.view)
        popOverChinn.didMove(toParentViewController: self)
        
    }
    
    @IBAction func closePopupChinn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
