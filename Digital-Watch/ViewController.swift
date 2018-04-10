//
//  ViewController.swift
//  Digital-Watch
//
//  Created by D7703_25 on 2018. 4. 10..
//  Copyright © 2018년 김재현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var Sw: UISwitch!
    @IBOutlet weak var lab1: UILabel!
    
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         Sw.setOn(false, animated: true)
    }
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        lab.text = formatter.string(from: date)
        formatter.dateFormat = "a"
        lab1.text = formatter.string(from: date)
    }
    @IBAction func Swt(_ sender: Any) {
        if Sw.isOn == true {
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()
            })
            
        } else {
            myTimer.invalidate()
        }
    }
}
