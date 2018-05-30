//
//  ViewController.swift
//  Hello World
//
//  Created by 스마트금융과15 on 2018. 3. 7..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var aaa: UILabel!
    
    @IBAction func bbb(_ sender: Any) {
        aaa.text = "ahh!"
    }
    
   
    @IBAction func ccc(_ sender: Any) {
        aaa.text = "good"
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

