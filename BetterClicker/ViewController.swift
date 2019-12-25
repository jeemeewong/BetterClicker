//
//  ViewController.swift
//  BetterClicker
//
//  Created by Jim Wong on 24/12/19.
//  Copyright © 2019 Jim Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var counter = 0
    var time = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    
    }

    @objc func update() {
        time += 0.1
    }
    
    @IBAction func tapped(_ sender: Any) {
        
        counter += 1
        label.text = "\(counter)"
        
        if counter == 10 {
            print("done")
            print("time taken : \(time) seconds")
        }
    }
    
}

