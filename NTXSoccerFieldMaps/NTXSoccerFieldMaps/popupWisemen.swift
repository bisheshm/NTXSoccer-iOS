//
//  popupWisemen.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/2/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupWisemen: UIViewController {
    
    @IBOutlet var addItemViewWisemen: UIView!
    
    @IBOutlet weak var mapWisemen: MKMapView!
    
    @IBAction func wisemenDirections(_ sender: Any) {
        
        let latitude: CLLocationDegrees = 33.071793
        let longitude: CLLocationDegrees = -97.006948
        
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Bob Wisemen Complex"
        mapItem.openInMaps(launchOptions: options)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2DMake(33.071793, -97.006948)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapWisemen.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        
        annotation.title = "Bob Wisemen Complex"
        
        mapWisemen.addAnnotation(annotation)
    
    }
    
    
    
    @IBAction func showPopupImageWisemen(_ sender: Any) {
        let popOverVC = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "wisemenimagepopup") as! PopupWisemenImage
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }

    @IBAction func closePopupWisemen(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    }


    
