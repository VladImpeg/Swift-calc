//
//  ViewController.swift
//  Calc for work
//
//  Created by Vlad Kovryzhenko on 4/6/17.
//  Copyright © 2017 Vlad Kovryzhenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var doubleNunb:Double = 0
    var saveNumber:Double = 0
    var operations = 0
    var ifPosible = false
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func someNumbers(_ sender: UIButton) {
        
        if ifPosible == true {
            numberLabel.text = String(sender.tag-1)
            saveNumber = Double(numberLabel.text!)!
            ifPosible = false
        }
        else {
            numberLabel.text = numberLabel.text! + String(sender.tag-1)
            doubleNunb = Double(numberLabel.text!)!
        }
        
 
    }
    
    
    @IBAction func actionButtons(_ sender: UIButton) {
        if numberLabel != nil && sender.tag != 11 && sender.tag != 12 {
            saveNumber = Double(numberLabel.text!)!
            //множим
            if sender.tag == 13{
                numberLabel.text = "X"
            }
                //делим
            else if sender.tag == 14{
                numberLabel.text = "/"
            }
                //минусуем
            else if sender.tag == 15{
                numberLabel.text = "-"
            }
                //плюсуем
            else if sender.tag == 16{
                numberLabel.text = "+"
            }
            operations = sender.tag
            ifPosible = true
        }
            else if sender.tag == 12 {
                
                if operations == 13 {
                     numberLabel.text = String(saveNumber * doubleNunb)
                }
               else if operations == 14 {
                    numberLabel.text = String(saveNumber / doubleNunb)
                }
               else if operations == 15 {
                   numberLabel.text = String(saveNumber - doubleNunb)
                }
               else if operations == 16 {
                  numberLabel.text = String(saveNumber + doubleNunb)
                }
            
        }
        else if sender.tag == 11 {
            numberLabel.text = ""
            doubleNunb = 0
            saveNumber = 0
            operations = 0
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

