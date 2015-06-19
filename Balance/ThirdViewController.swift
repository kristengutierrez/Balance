//
//  ThirdViewController.swift
//  Balance
//
//  Created by Kristen Kozmary on 6/17/15.
//  Copyright (c) 2015 koz. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var dateTextField: UITextField!

    @IBOutlet weak var datePicker: UIDatePicker!
 
    
    @IBAction func datePickerPressed(sender: UIDatePicker) {
    
        
//        var datePickerView:UIDatePicker = UIDatePicker()
//        datePickerView.datePickerMode = UIDatePickerMode.Date
//        sender.inputView = datePickerView
//        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
        
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        var dateformatter = NSDateFormatter()
        dateformatter.dateStyle = NSDateFormatterStyle.MediumStyle
        dateTextField.text = dateformatter.stringFromDate(sender.date)
    }
    
    
    @IBAction func donePressed(sender: AnyObject) {
     
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        datePicker.datePickerMode = UIDatePickerMode.Date
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

