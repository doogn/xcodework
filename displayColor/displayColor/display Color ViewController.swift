//
//  display Color ViewController.swift
//  displayColor
//
//  Created by 스마트금융과15 on 2018. 5. 1..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class display_Color_ViewController: UIViewController {

    var colorRed = 0
    var colorGreen = 0
    var colorBlue = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(colorRed)
        print(colorGreen)
        print(colorBlue)
        
        let backColor = UIColor(red: CGFloat(colorRed) / 256.0, green: CGFloat(colorGreen) / 256.0, blue: CGFloat(colorBlue) / 256.0, alpha: 1.0)
        view.backgroundColor = backColor

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextvc = segue.destination as? thirdScreen {
            // 변경될 화면에 있는 변수에 값을 전달
            nextvc.colorRed = colorRed
            nextvc.colorGreen = colorGreen
            nextvc.colorBlue = colorBlue
        }
        
    }
    
    
    
    @IBAction func returnSecond(segue: UIStoryboardSegue){
        print("Returned")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
