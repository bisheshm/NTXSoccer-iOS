//
//  popupMoneyGram.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/26/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class popupMoneyGram: UIViewController {
    
    @IBOutlet weak var mapMoneyGram: MKMapView!
    
    @IBAction func moneygramDirections(_ sender: Any) {
        let latitude: CLLocationDegrees = 32.881066
        let longitude: CLLocationDegrees = -96.904108
        let regionDistance: CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "MoneyGram Soccer Park"
        mapItem.openInMaps(launchOptions: options)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let location = CLLocationCoordinate2DMake(32.881066, -96.904108)
        
        let span = MKCoordinateSpanMake(0.008, 0.008)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapMoneyGram.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "MoneyGram Soccer Park"
        
        mapMoneyGram.addAnnotation(annotation)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showImageMoneyGram(_ sender: Any) {
        let popOverMoneyGram = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popupmoneygramimage") as! popupMoneyGramImage
        self.addChildViewController(popOverMoneyGram)
        popOverMoneyGram.view.frame = self.view.frame
        self.view.addSubview(popOverMoneyGram.view)
        popOverMoneyGram.didMove(toParentViewController: self)
    }
    
    @IBAction func closePopupMoneyGram(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
