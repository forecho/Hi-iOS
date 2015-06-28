//
//  ViewController.swift
//  ChineseZodiacTest
//
//  Created by 张兔子 on 15/6/24.
//  Copyright (c) 2015年 张兔子. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yearOfBirth: UITextField!

    @IBOutlet weak var animalImageOfYear: UIImageView!
    
    // 常量 offset =
    let offset = 1990 % 12 - 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text.toInt() {
            var imageNumber = (year % 12) - offset
            if imageNumber <= 0 {
                imageNumber += 12
            }
            animalImageOfYear.image = UIImage(named: String(imageNumber))
        }
    }

}

