//
//  ViewController.swift
//  Tap
//
//  Created by Dasu on 2021/7/2.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterNub: UILabel!
    var counter = 0
    
    @IBOutlet weak var buttonAndlongpress: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counterNub.text = "\(counter)"
        let longPress2 = UILongPressGestureRecognizer(target: self, action: #selector(longPress))
        buttonAndlongpress.addGestureRecognizer(longPress2)
    }
    @objc func longPress(recognizer:UILongPressGestureRecognizer) {
        if recognizer.state == .began {
        } else if recognizer.state == .changed{
            counter += 1
            counterNub.text = "\(counter)"
//        } else if recognizer.state == .ended { 如果要在結束時加動作才需要加入
        }
    }

    @IBAction func tapHoldnAdd(_ sender: UIButton) {
        counter += 1
        counterNub.text = "\(counter)"
        }
    
    @IBAction func reset(_ sender: UIButton) {
     counter = 0
     counterNub.text = "\(counter)"
        
    }
}

