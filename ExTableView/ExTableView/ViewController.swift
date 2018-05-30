//
//  ViewController.swift
//  ExTableView
//
//  Created by 스마트금융과15 on 2018. 5. 16..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    let testArray = ["apple", "pear", "banana", "strawberry"]
    let testArray2 = ["사과", "배", "바나나", "딸기"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4  // 4개의 Row
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // style을 default에서 subtitle로 변경 가능
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "test")
        
        print(indexPath.row)
        
        cell.textLabel?.text = testArray[indexPath.row]  // title
        cell.textLabel?.text = String(indexPath.section) + ":" + testArray[indexPath.row]  // 섹션번호 추가
        cell.detailTextLabel?.text = testArray2[indexPath.row]   // subtitle
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4  // 각 섹션을 4번 반복
    }
    
    // 섹션을 머릿말과 꼬리말로 구분
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer"
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

