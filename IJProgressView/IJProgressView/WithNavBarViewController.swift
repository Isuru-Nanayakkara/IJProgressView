//
//  WithNavBarViewController.swift
//  IJProgressView
//
//  Created by Isuru Nanayakkara on 7/24/19.
//  Copyright © 2019 Appex. All rights reserved.
//

import UIKit

class WithNavBarViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        IJProgressView.shared.showProgressView()
        setCloseTimer()
    }
    
    @objc func close() {
        IJProgressView.shared.hideProgressView()
    }
    
    func setCloseTimer() {
        _ = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(close), userInfo: nil, repeats: false)
    }
    
    @IBAction func showButtonTapped(_ sender: UIButton) {
        IJProgressView.shared.showProgressView()
        setCloseTimer()
    }
    
    @IBAction func leftButtonTapped(_ sender: UIBarButtonItem) {
        print(#function)
    }
    
    @IBAction func rightButtonTapped(_ sender: UIBarButtonItem) {
        print(#function)
    }
}
