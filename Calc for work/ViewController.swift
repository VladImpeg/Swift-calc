//
//  ViewController.swift
//  Calc for work
//
//  Created by Vlad Kovryzhenko on 4/6/17.
//  Copyright © 2017 Vlad Kovryzhenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //число
    var doubleNunb:Double = 0
    //сейвим число
    var saveNumber:Double = 0
    var operations = 0
    var ifPosible = false
    
    @IBOutlet weak var numberLabel: UILabel!
    
    //отображение введенных данных
    @IBAction func someNumbers(_ sender: UIButton) {
        
        if ifPosible == true {
            numberLabel.text = String(sender.tag - 1)
            doubleNunb = Double(numberLabel.text!)!
            ifPosible = false
        }
        else {
            numberLabel.text = numberLabel.text! + String(sender.tag-1)
            doubleNunb = Double(numberLabel.text!)!
            
        }
        
 
    }
    //MARK: - функция для екшн кнопок
    //если строка не пустая или же не нажатая кнопка очистить или равно, то показываем выбраное действие пользователю
    @IBAction func actionButtons(_ sender: UIButton) {
        if numberLabel.text != "" && sender.tag != 11 && sender.tag != 12 {
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
   
            //здесь вся магия.Определяем тег кнопки и выполняем соответствующую операцию
            else if sender.tag == 12 {
                
                if operations == 13 {
                     numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                     numberLabel.text = String(saveNumber * doubleNunb)
                }
               else if operations == 14 {
                     numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                    numberLabel.text = String(saveNumber / doubleNunb)
                }
               else if operations == 15 {
                     numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                   numberLabel.text = String(saveNumber - doubleNunb)
                }
               else if operations == 16 {
                     numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                  numberLabel.text = String(saveNumber + doubleNunb)
                }
        }
            //обнуляем
        else if sender.tag == 11 {
            numberLabel.text = ""
            doubleNunb = 0
            saveNumber = 0
            operations = 0
        }
           }
    
    
    
    
    //MARK: - функция для точки 
    //она мало чем отличается от преведущей
    @IBAction func dotAction(_ sender: UIButton) {
        
        if numberLabel.text != "" && sender.tag != 11 && sender.tag != 12 {
            saveNumber = Double(numberLabel.text!)!
            if sender.tag == 19 {
                numberLabel.text = numberLabel.text! + "."
            }
            operations = sender.tag
            ifPosible = false

        
        
        }
        else if sender.tag == 12 {
            ifPosible = true
            if operations == 13 {
                numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                numberLabel.text = String(saveNumber * doubleNunb)
            }
            else if operations == 14 {
                numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                numberLabel.text = String(saveNumber / doubleNunb)
            }
            else if operations == 15 {
                numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
                numberLabel.text = String(saveNumber - doubleNunb)
            }
            else if operations == 16 {
                numberLabel.font = UIFont(name: numberLabel.font.fontName, size: 52)
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
    ///енд
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("i want this work!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

