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

    @objc func close() {
        IJProgressView.shared.hideProgressView()
    }
    
    func setCloseTimer() {
        _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(close), userInfo: nil, repeats: false)
    }
    
    @IBAction func showButtonTapped(_ sender: UIButton) {
        IJProgressView.shared.showProgressView(view)
        
        setCloseTimer()
    }
    
}

