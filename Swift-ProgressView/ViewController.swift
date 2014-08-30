//
//  ViewController.swift
//  Swift-ProgressView
//
//  Created by Isuru Nanayakkara on 8/30/14.
//  Copyright (c) 2014 Isuru Nanayakkara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProgressView.shared.showProgressView(view)
        
        let timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "close", userInfo: nil, repeats: false)
    }
    
    func close() {
        ProgressView.shared.hideProgressView()
    }

    @IBAction func show(sender: UIButton) {
        ProgressView.shared.showProgressView(view)
    }
    
}

