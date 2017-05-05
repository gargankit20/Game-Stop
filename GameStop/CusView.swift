//
//  CusView.swift
//  GameStop
//
//  Created by Eissa Al on 4/30/17.
//  Copyright © 2017 Eissa Al. All rights reserved.
//

import UIKit
import CoreData



class CustomerView: UITableViewController {
    
    var myCustomer:NSArray=[CustomerView]() as NSArray
    
    var msg: String!
    var sn: String!
    var sp: String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(msg)
        if(msg=="mv")
        {
            // create appDelegate
            let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            //create managedObjectContext
            let request = NSFetchRequest(entityName: "CustomerInformation")
            //create fetch  request
            let context:NSManagedObjectContext = appDel.managedObjectContext
            //executing the fetchrquest
            //the result is placed in an array
            
            do
            {
                try myCustomer = context.fetch(request)
                
            }
            catch
            {
                print("Error while add feching")
            }
        }
        else if(msg=="sn")
        {
           
            let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
            
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CustomerInformation")
            
            let context:NSManagedObjectContext = appDel.managedObjectContext
            
            
            let con = NSPredicate(format: "customerName = %@",sn)
            request.predicate = con
            do
            {
                try myCustomer = context.fetch(request) as NSArray
                
            }
            catch
            {
                print("Error while add feching")
            }
            
        }
        else if(msg=="sp")
        {
            
            let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
           
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CustomerInformation")
           
            let context:NSManagedObjectContext = appDel.managedObjectContext
            
            
            let con = NSPredicate(format: "customerPhone = %@",sp)
            request.predicate = con
            do
            {
                try myCustomer = context.fetch(request) as NSArray
                
            }
            catch
            {
                print("Error while add feching")
            }
            
        }
        
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return myCustomer.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        
        var res = myCustomer[indexPath.row] as! CustomerInformation
        
        let customerName = res.value(forKey: "customerName") as! String
        
        
        
        
        cell.textLabel?.text = customerName as! String
        let z = customerName as! String
        //supTital
        cell.detailTextLabel?.text = z as! String
        
        
        
        
        
        return cell
}

