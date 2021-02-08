//
//  ViewController.swift
//  Chapter08-APITest
//
//  Created by 심찬영 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var currentTime: UILabel!
    
    @IBAction func callCurrentTime(_ sender: UIButton) {
        do {
            // URL 설정 및 GET 방식으로 API 호출
            let url = URL(string: "http://swiftapi.rubypaper.co.kr:2029/practice/currentTime")
            let response = try String(contentsOf: url!)
            
            // 읽어온 값을 레이블에 표시
            self.currentTime.text = response
            self.currentTime.sizeToFit()
        } catch let e as NSError {
            print(e.localizedDescription)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

