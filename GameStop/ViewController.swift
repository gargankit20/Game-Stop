//
//  ViewController.swift
//  GameStop
//
//  Created by Eissa Al on 4/26/17.
//  Copyright © 2017 Eissa Al. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "mv"
        {
            let dvc = segue.destination as! CustomerView
            
            dvc.msg = "mv"
            dvc.sn = ""
            dvc.sp = ""
        }}


}

