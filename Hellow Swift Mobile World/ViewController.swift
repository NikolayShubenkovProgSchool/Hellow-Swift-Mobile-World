//
//  ViewController.swift
//  Hellow Swift Mobile World
//
//  Created by Nikolay Shubenkov on 02/04/16.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

//AutoLayout
class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        //?? означает, что приложение попробует извлечь 
        //  содержимое поля текст
        let userName = inputField.text ?? "Аноним"
        let greeting = userName + " добро пожаловать в мир разработки мобильных приложений!!! Ихаааа!!!!"
        
        greetingLabel.text = greeting
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputField.delegate = self
    }
}

extension ViewController:UITextFieldDelegate {
    
    //когда пользователь нажимает на ввод на устройстве с клавиатуре, вызывается этот метод
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        //По сути это позволяет скрыть клавиатуру
        textField.resignFirstResponder()
        
        return true
    }

    func textField(textField: UITextField,
shouldChangeCharactersInRange range: NSRange,
    replacementString string: String) -> Bool {
        
        
        var applyiedString = (textField.text as? NSString)?.stringByReplacingCharactersInRange(range, withString: string)
        
        let elementsToConvert = ["1" : "Один ",
                                 "2" : "Два ",
                                 "3" : "Три ",
                                 "4" : "Четыре ",
                                 "5" : "Пять ",
                                 "6" : "Шесть ",
                                 "7" : "Семь ",
                                 "8" : "Восемь ",
                                 "9" : "Девять ",
                                 "0" : "Ноль "]
        
        
        for (digit, letters) in elementsToConvert {
            applyiedString = applyiedString?.stringByReplacingOccurrencesOfString(digit, withString: letters)
        }
        
        textField.text = applyiedString
        
        return false
    }
}

























