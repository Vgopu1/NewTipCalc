//
//  ViewController.swift
//  NewTipCalc
//
//  Created by Veena on 10/11/15.
//  Copyright © 2015 Veena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text="$0.00"
        totalLabel.text="$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChnaged(sender: AnyObject) {
        print("User Edited Bill Amount")

       var tipPercentages = [0.18, 0.22, 0.25]
       let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        let billAmount = (billField.text! as NSString).doubleValue

        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        // tipLabel.text = "$\(tip)"
       // totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

