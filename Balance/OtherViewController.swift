//
//  OtherViewController.swift
//  Balance
//
//  Created by Kristen Kozmary on 6/17/15.
//  Copyright (c) 2015 koz. All rights reserved.
//

import UIKit

class OtherViewController: UIViewController {
    
    var counter = 1
    var answers: [Bool] = []
    
    var arr: [String] = ["Have you fallen in the past year?",
        "Do you lose your balance when standing?",
        "Do you lose your balance when you initially get up?",
        "Do you get dizzy, faint or have seizures?",
        "Does it take you more than one try to get up out of a chair?",
        "Does it take you more than one try to get up out of bed?",
        "Do you trip over your own feet or objects on the floor?",
        "Do you use a walker, cane or need assistance to get around?",
        "Do you ever lose your balance?",
        "Do you feel unsteady or stagger when walking?",
        "Have you had a recent loss or decrease in your vision?",
        "Have you had a recent loss or decrease in your hearing?",
        "Do you have numbness or loss of sensation/feeling in your legs?",
        "Have you ever had a stroke?",
        "Have you had an accident or injury that affected your balance?",
        "Do you have any health problems that affect your balance?",
        "Do you take any medications that affect your balance?",
        "Are you concerned about falling or losing your balance?"]

    @IBOutlet var questionNumber: UILabel!
    
    @IBOutlet var questionLabel: UILabel!
    
    @IBAction func yesPressed(sender: AnyObject) {
        answers.append(true)
        if counter == 18 {
            
            questionNumber.text = " "
            showNextViewController()
        } else {
            updateQuestion(sender);
            counter++
            
             questionNumber.text = "Question \(counter)"
        }
        
    }
    
    
    @IBAction func noPressed(sender: AnyObject) {
        answers.append(false)
        if counter == 18 {
            
            questionNumber.text = " "
            showNextViewController()
        } else {
            updateQuestion(sender);
            
            counter++
            
            questionNumber.text = "Question \(counter)"
        }
        
    }

    func updateQuestion(sender: AnyObject) {
        questionLabel.text = arr[counter];
    }
    
    
    func showNextViewController()
    {
        let vc : AnyObject! = self.storyboard!.instantiateViewControllerWithIdentifier("Third")
        self.showViewController(vc as! UIViewController, sender: vc)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSUserDefaults.standardUserDefaults()

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
