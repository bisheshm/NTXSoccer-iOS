//
//  popupCarpenterImage.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 10/26/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit

class popupCarpenterImage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        self.showAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    @IBAction func closePopupImageCarpenter(_ sender: Any) {
        
        self.removeAnimate()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished: Bool) in
            if(finished)
            {
                self.view.removeFromSuperview()
            }
        });
        
    }

}
