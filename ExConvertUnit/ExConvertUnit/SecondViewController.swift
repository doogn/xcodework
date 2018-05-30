//
//  SecondViewController.swift
//  ExConvertUnit
//
//  Created by 스마트금융과15 on 2018. 5. 16..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var m_dataTextField: UITextField!
    
    // AppDelegate에 접근할 수 있게 객체를 만든다. (ap.cmVale(전역변수))로 접근 가능)
    let ap = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // 화면을 출력할 때 호출된다.(오버라이드 함수)
    override func viewWillAppear(_ animated: Bool) {
        // appDelegate 변수에서 읽어서 화면(텍스트필드)에 표시
        let inchValue = ap.cmValue * 0.3937
        m_dataTextField.text = String(inchValue)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnClicked(_ sender: Any) {
        //사용자가 입력(버튼클릭)시 텍스트필드 값을 appDelegate 변수에 적용 (업데이트)
        //키보드를 닫는다
        m_dataTextField.resignFirstResponder()
        
        if let text = m_dataTextField.text{
            
            if let cmValue = Double(text){
                ap.cmValue = cmValue / 0.3937
            }
        }
    }
    
}

