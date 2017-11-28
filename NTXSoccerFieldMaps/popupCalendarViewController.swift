//
//  popupCalendarViewController.swift
//  NTXSoccerFieldMaps
//
//  Created by Manandhar, Bishesh on 11/3/17.
//  Copyright © 2017 Manandhar, Bishesh. All rights reserved.
//

import UIKit

var event = [String]()
var userData = false

class popupCalendarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableCalendar: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return event.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: nil)
            cell.textLabel?.text = event[indexPath.row]
            return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableCalendar.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userData = UserDefaults.standard.bool(forKey: "userData")

        if userData == true {
            event = UserDefaults.standard.object(forKey: "theEvent") as! [String]
        }
        
        
        tableCalendar.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            event.remove(at: indexPath.row)
            UserDefaults.standard.set(event, forKey: "theEvent")
        }
        tableCalendar.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   


    
    @IBAction func closePopupCalendar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
