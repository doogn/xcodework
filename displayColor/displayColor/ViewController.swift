//
//  ViewController.swift
//  displayColor
//
//  Created by 스마트금융과15 on 2018. 5. 1..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit
import GameplayKit  // random generator 활용 위해 import

class ViewController: UIViewController {

    let m_randomSource = GKARC4RandomSource()  // random generator
    var m_colorR = 0  // Red
    var m_colorG = 0  // Green
    var m_colorB = 0  // Blue
    
    
    // 레이블 색상표시
    @IBOutlet weak var m_colorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_ShowColor(_ sender: Any) {
    }
    
    // modal 탈출구
    @IBAction func returnMain(segue: UIStoryboardSegue){
        print("Returned")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // R G B 랜덤하게 받아오기
        m_colorR = m_randomSource.nextInt(upperBound: 256)
        m_colorG = m_randomSource.nextInt(upperBound: 256)
        m_colorB = m_randomSource.nextInt(upperBound: 256)
        
        // 레이블에 3개의 값을 출력
        m_colorLabel.text = "R=\(m_colorR), G=\(m_colorG), B=\(m_colorB)"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("screen #2")
        // 두번째 화면(display_Color_ViewController 클래스)으로 RGB 값 전달하기
        let nextvc = segue.destination as! display_Color_ViewController  // 강제 변환
        // (자바로 치면) Student student1 = new Student()
        // nextvc = new display_Color_ViewController()
        
        // 변경될 화면에 있는 변수에 값을 전달
        nextvc.colorRed = m_colorR
        nextvc.colorGreen = m_colorG
        nextvc.colorBlue = m_colorB
    }
    
    
    
}

