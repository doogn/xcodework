//
//  ViewController.swift
//  pre
//
//  Created by 스마트금융과15 on 2018. 4. 25..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myTextView: UITextView!
    
    @IBAction func btnTouch(_ sender: Any) {
        myLabel.text = "Euijin Kim"
    }
    
    @IBAction func swithChanged(_ sender: Any) {
        if mySwitch.isOn == true {
            myImageView.image = UIImage(named: "1.jpg")
        } else {
            myImageView.image = UIImage(named: "2.jpg")
        }
    }
    


    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.image = UIImage(named: "1.jpg")
        
        
        NSAttributedString attributedString = [[NSAttributedString alloc] initWithString:@"Google"
            attributes:@{ NSLinkAttributeName: [NSURL URLWithString:@"http://www.google.com"] }];
        self.myTextView.attributedText = attributedString;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

