//
//  ViewController.swift
//  TalaOyebaMasano
//
//  Created by Mikungu Giresse on 14/06/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .roundedRect)
              button.frame = CGRect(x: 20, y: 50, width: 100, height: 30)
              button.setTitle("Test Crash", for: [])
              button.addTarget(self, action: #selector(self.crashButtonTapped(_:)), for: .touchUpInside)
              view.addSubview(button)
    }

    @IBAction func crashButtonTapped(_ sender: AnyObject) {
         let numbers = [0]
         let _ = numbers[1]
     }
}

