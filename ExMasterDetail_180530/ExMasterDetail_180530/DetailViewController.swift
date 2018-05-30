//
//  DetailViewController.swift
//  ExMasterDetail_180530
//
//  Created by 스마트금융과15 on 2018. 5. 30..
//  Copyright © 2018년 ejkim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

//    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var m_imageView: UIImageView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            
            // detail 통해 받아온 파일명 (fireworks001)에 .jpg를 붙여서 UIImage 객체를 만들어서
            // UIImageView 컴포넌트(m_imageView)에 전달하면 된다
            if let imageView = m_imageView{
                let fileName = "\(detail).jpg"
                imageView.image = UIImage(named: fileName)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
        title = "fireworks"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

