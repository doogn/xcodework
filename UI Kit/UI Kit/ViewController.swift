//
//  ViewController.swift
//  UI Kit
//
//  Created by 스마트금융과15 on 2018. 3. 28..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var m_switch:Int = 0
    
    @IBOutlet weak var m_label: UILabel!
    
    @IBOutlet weak var m_myButton: UIButton!
    
    @IBOutlet weak var m_mySwitch: UISwitch!
    

    
    
    
    
    
    @IBAction func funcBtnTap(_ sender: Any) {
        m_myButton.setTitle("눌러주세요", for: UIControlState.normal)
        m_myButton.isEnabled = true
        m_myButton.isSelected = true
        m_label.text = NSLocalizedString("Hello", comment:"인사말")
        m_label.textColor = UIColor.blue
        m_label.backgroundColor = UIColor.cyan
        m_label.textAlignment = NSTextAlignment.left
        m_label.font = UIFont.systemFont(ofSize: 20)
        m_label.numberOfLines = 0
    }
    
    let onColor  = UIColor.gray
    let offColor = UIColor.yellow
    
    
    @IBAction func funcSwitchChange(_ sender: Any) {
        if(m_switch == 0) {
            m_mySwitch.isOn = true
            m_mySwitch.onTintColor = UIColor.red
            m_mySwitch.thumbTintColor = UIColor.yellow
            m_switch = 1
        } else if (m_switch == 1) {
            m_mySwitch.isOn = false
            m_mySwitch.onTintColor = UIColor.white
            m_mySwitch.thumbTintColor = UIColor.black
            m_switch = 2
        } else if (m_switch == 2) {
            m_mySwitch.isOn = true
            m_mySwitch.onTintColor = UIColor.brown
            m_mySwitch.thumbTintColor = UIColor.green
            m_switch = 3
        } else {
            m_mySwitch.isOn = false
            m_mySwitch.tintColor = offColor
            m_mySwitch.layer.cornerRadius = 16
            m_mySwitch.backgroundColor = offColor
            m_mySwitch.thumbTintColor = UIColor.blue
            m_switch = 0
        }
    }
    
    
    
    
    
    
    
}

