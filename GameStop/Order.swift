//
//  Order.swift
//  GameStop
//
//  Created by Eissa Al on 4/30/17.
//  Copyright © 2017 Eissa Al. All rights reserved.
//

import UIKit

class order: UIViewController, UIPickerViewDelegate{
    
    
    var CDs :String = ""
    var MyArray :[String] = ["Fifa2017","Call Of Duty","GTA"]
    var Name : String = ""
    var Number : Int = 0
    var total : Float = 0
    var Cprice : Float = 0
    
//outlets
    
    
    
    @IBOutlet weak var O_Name: UITextField!
    
    
    @IBOutlet weak var O_Phone: UITextField!
    
    
    @IBOutlet weak var O_Duration: UILabel!
    
    @IBOutlet weak var O_Result: UILabel!
    
    @IBOutlet weak var O_Picker: UIPickerView!
    
    
    //actions
    
    
    
    
    
    
    
    @IBAction func A_Student(_ sender: UISwitch) {
    }
    
    @IBAction func A_StepperDu(_ sender: UIStepper) {
    }
    
    
    @IBAction func A_Confirm(_ sender: UIButton) {
        
    }
    
    
    @IBAction func A_total(_ sender: UIButton) {
    
    
    
    
        if (CDs == "Fifa2017")
        { Cprice = 450;}
            
            
        else if (CDs == "Call Of Duty")
        { Cprice = 360; }
        
        else  (CDs == "GTA")
        {Cprice = 210; }
        
        
        total =  (O_Duration)!; *Cprice
        
        if A_Student.isOn
        {
            total = total - 30.0
        }
        
        
    
    
        
        O_Result.text = " Total is AED" + String(total)
    }
    
}

    func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }








