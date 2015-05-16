//
//  ViewController.swift
//  AutoSizeTableViewCell
//
//  Created by George M. Ceaser Jr on 5/15/15.
//  Copyright (c) 2015 George M. Ceaser Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var hotels:[String: String] = ["The Grand Del Mar": "5300 Grand Del Mar Court, San Diego, CA 92130",
        "French Quarter Inn": "166 Church St, Charleston, SC 29401",
        "Bardessono": "6526 Yount Street, Yountville, CA 94599",
        "Hotel Yountville": "6462 Washington Street, Yountville, CA 94599",
        "Islington Hotel": "321 Davey Street, Hobart, Tasmania 7000, Australia",
        "The Henry Jones Art Hotel": "25 Hunter Street, Hobart, Tasmania 7000, Australia",
        "Clarion Hotel City Park Grand": "22 Tamar Street, Launceston, Tasmania 7250, Australia",
        "Quality Hotel Colonial Launceston": "31 Elizabeth St, Launceston, Tasmania 7250, Australia",
        "Premier Inn Swansea Waterfront": "Waterfront Development, Langdon Rd, Swansea SA1 8PL, Wales",
        "Hatcher's Manor": "73 Prossers Road, Richmond, Clarence, Tasmania 7025, Australia"]
    
    var hotelNames:[String] = []
//    
//    var la_Label1: [String] = ["Header 1", "Header 2", "Header 3"]
//    var la_label2: [String] = ["Short Text", "This is medium text so it goes to two lines", "This is very long text.  I am hoping this will make the text go onto at least three lines.  If it does not I will have to make this text longer."]
    
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hotelNames = [String](hotels.keys)
        
        myTable.estimatedRowHeight = 68.0
        myTable.rowHeight = UITableViewAutomaticDimension
        
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return la_Label1.count
        return hotels.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = myTable.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CustomTableViewCell
        
        
//        println("IndexPath.row:" + indexPath.row.description)
//        cell.nameLabel.text = la_Label1[indexPath.row]
//        cell.addressLabel.text = la_label2[indexPath.row]
        
        
        let hotelName = hotelNames[indexPath.row]
        cell.nameLabel.text = hotelName
        cell.addressLabel.text = hotels[hotelName]
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

