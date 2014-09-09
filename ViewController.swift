//
//  ViewController.swift
//  tippy
//
//  Created by Zhen Wang on 9/2/14.
//  Copyright (c) 2014 Zhen Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            

    @IBOutlet weak var billLabel: UILabel!

    @IBOutlet weak var billText: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!

    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipText: UILabel!
    
    @IBOutlet weak var totalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipText.text = "$0.00"
        totalText.text = "$0.00"
        
        
    }
    @IBOutlet weak var rateSelector: UISegmentedControl!
    
    
    @IBAction func onValueChanged(sender: AnyObject) {
        
        var rate:Double
        switch(rateSelector.selectedSegmentIndex){
        case 0:
            rate = 0.15
        case 1:
            rate = 0.20
        default:
            rate = 0.15
        }
        var billAmount = NSString(string: billText.text).doubleValue
        var tipAmount = billAmount*rate
        
        tipText.text = NSString(format:"%.2f",tipAmount)
        totalText.text = NSString(format:"%.2f",tipAmount+billAmount)
        
        
    }

    @IBAction func onEditChanged(sender: AnyObject) {

        var rate:Double
        switch(rateSelector.selectedSegmentIndex){
        case 0:
            rate = 0.15
        case 1:
            rate = 0.20
        default:
            rate = 0.15
        }
        var billAmount = NSString(string: billText.text).doubleValue
        var tipAmount = billAmount*rate

        tipText.text = NSString(format:"%.2f",tipAmount)
        totalText.text = NSString(format:"%.2f",tipAmount+billAmount)
        
        

    }
    

    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

