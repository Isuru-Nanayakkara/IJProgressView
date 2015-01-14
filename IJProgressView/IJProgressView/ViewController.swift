//
//  ViewController.swift
//  IJProgressView
//
//  Created by Isuru Nanayakkara on 1/14/15.
//  Copyright (c) 2015 Appex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        IJProgressView.shared.showProgressView(view)
        
        setCloseTimer()
    }

    func close() {
        IJProgressView.shared.hideProgressView()
    }
    
    func setCloseTimer() {
        let timer = NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: "close", userInfo: nil, repeats: false)
    }
    
    @IBAction func showButtonTapped(sender: UIButton) {
        IJProgressView.shared.showProgressView(view)
        
        setCloseTimer()
    }
    
}

