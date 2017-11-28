//
//  popupLeague.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 11/2/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit

class popupLeague: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func websiteClassic(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.ccsai.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callChamber(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://2143615480")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func webisteCarrollton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.cfbsa.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callCarollton3(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9722459307")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
   
    
    @IBAction func websiteColleyville(_ sender: Any) {
        UIApplication.shared.open(URL(string: "www.colleyvillesoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callColleyville(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8172518586")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteCoppell(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://coppellyouthsoccer.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callCoppell(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9723040886")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteFrisco(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.friscosoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callFrisco(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9727126425")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteGrapevine(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.gssasoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callGrapevine(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://8174109950")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteLewisville(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.glasasoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callLewisville(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9722214623")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteIrving(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.irvingsoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callIrving(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9722732280")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func wesbiteBinivaa(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.girlsclassicleague.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callBinivaa(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://4697080411")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteLake(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.lhsasoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callLake(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://2142210808")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websitePlano(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.pysa.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callPlano(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9724227972")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteRichardson(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.richardsonsoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callRichardson(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9722342571")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteRowlett(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.rowlettsoccer.org/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callRowlett(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://2146074681")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func websiteWylie(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://www.wyliesoccer.com/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func callWylie(_ sender: Any) {
        let url: NSURL = URL(string: "TEL://9722007991")! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func closePopupLeague(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
