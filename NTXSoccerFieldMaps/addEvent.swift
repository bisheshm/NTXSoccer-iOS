//
//  addEvent.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 11/3/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit

class addEvent: UIViewController {
    
    @IBOutlet weak var textEvent: UITextField!
    
    
    @IBAction func buttonDone(_ sender: Any) {
        
        userData = true;
        UserDefaults.standard.object(forKey: "userData")
        
        if textEvent.text == "" {
            textEvent.backgroundColor = UIColor.red
        }
        else{
            textEvent.backgroundColor = UIColor.white
            event.append(textEvent.text!)
            UserDefaults.standard.set(event, forKey: "theEvent")
        }
        
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
