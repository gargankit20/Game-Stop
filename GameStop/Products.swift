//
//  Products.swift
//  GameStop
//
//  Created by Eissa Al on 4/30/17.
//  Copyright © 2017 Eissa Al. All rights reserved.
//

import UIKit

class product: UIViewController,
UITableViewDelegate{
    
    
    var GameName = ["Fifa2017", "Call Of Duty", "GTA"]
    var GamePicture = [ "fifa.JPG","callofduty.PNG","GTA.JPG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return GameName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "cellRest"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = GameName[indexPath.row]
        cell.imageView?.image = UIImage(named: GamePicture[indexPath.row])
        
        
        return cell
        
    }
    
    
}


