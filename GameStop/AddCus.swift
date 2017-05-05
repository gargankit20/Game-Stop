//
//  AddCus.swift
//  GameStop
//
//  Created by Eissa Al on 4/30/17.
//  Copyright © 2017 Eissa Al. All rights reserved.

import UIKit

import CoreData

class Addcustomer: UIViewController {
    
        //outlets
    
    @IBOutlet weak var O_CusName: UITextField!
    
    @IBOutlet weak var O_CusNumb: UITextField!
    
    //actions
    
    
    @IBAction func A_Add(_ sender: UIButton) {
    }
    
        
        let applDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let context:NSManagedObjectContext = applDel.managedObjectContext
        
        let newcustomer = NSEntityDescription.insertNewObject(forEntityName: "CustomerInformation", into: context)
        
        newcustomer.setValue(txtName.text, forKey: "customerName")
        newcustomer.setValue(Int(phoneNum.text!), forKey: "customerPhone")
        
        
        
        
        
        do {
            try context.save()
        }
            
        catch
        {
            print("Error while adding records")
        }
        
        do
        {
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CustomerInformation")
            let results = try context.fetch(request)
            
            if results.count > 0
            {
                for item in results as! [NSManagedObject]
                {
                    let customerName = item.value(forKey: "customerName")
                    let customerPhone = item.value(forKey: "customerPhone")
                    
                    
                    
                    print(customerName!, customerPhone!)
                    txtName.text=""
                    phoneNum.text=""
                    
                }
            }
        }
            
        catch
        {
            print ("Error while reading data")
        }
        
    }
    
    
    
    
    
    func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "sn"
        {
            let dvc = segue.destination as! CustomerView
            
            dvc.msg = "sn"
            dvc.sn = O_CusName.text
            
        }
        else if segue.identifier == "sp"
        {
            let dvc = segue.destination as!
            CustomerView
            dvc.msg = "sp"
            dvc.sp = O_CusNumb.text
            
}
}


