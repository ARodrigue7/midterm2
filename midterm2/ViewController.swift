//
//  ViewController.swift
//  midterm2
//
//  Created by Adrian Rodriguez on 3/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables
    
    @IBOutlet weak var bill1: UITextField!
    @IBOutlet weak var bill2: UITextField!
    @IBOutlet weak var bill3: UITextField!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    
    //Function
    
    @IBAction func calculate(_ sender: Any) {
        
        if bill1.text?.isEmpty == false {

            let amount1 = NSString(string: bill1.text!).floatValue
            let amount2 = NSString(string: bill2.text!).floatValue
            let amount3 = NSString(string: bill3.text!).floatValue
            
            
            totalAmount.text = "$\(String(format: "%.2f", amount1 + amount2 + amount3))"
            
        }

        bill1.text = ""
        bill2.text = ""
        bill3.text = ""
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


