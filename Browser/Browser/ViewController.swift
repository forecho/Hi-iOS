//
//  ViewController.swift
//  Browser
//
//  Created by 蔡 正海 on 15/4/7.
//  Copyright (c) 2015年 forecho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var urlInput: UITextField!
    @IBOutlet var btnGo: UIButton!
    @IBOutlet var webView: UIWebView!
    
    @IBAction func btnGoClicked(sender: AnyObject) {
        webView.loadRequest(NSURLRequest(URL: NSURL(string: urlInput.text)!))
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

