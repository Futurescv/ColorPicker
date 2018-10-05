//
//  ViewController.swift
//  PickViews
//
//  Created by 123 on 2018/10/5.
//  Copyright © 2018年 Jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    let colors = ["Red","Orange","Green","Blue","Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        if label.text == "Red"{
            view.backgroundColor = UIColor.red
        }
        if label.text == "Orange"{
            view.backgroundColor = UIColor.orange
        }
        if label.text == "Green"{
            view.backgroundColor = UIColor.green
        }
        if label.text == "Blue"{
            view.backgroundColor = UIColor.blue
        }
        if label.text == "Purple"{
            view.backgroundColor = UIColor.purple
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

