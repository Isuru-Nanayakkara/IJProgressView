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
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBAction func showButtonTapped(_ sender: UIButton) {
        IJProgressView.shared.backgroundColor = UIColor.init(red: CGFloat(redSlider.value/255.0), green: CGFloat(greenSlider.value/255.0), blue: CGFloat(blueSlider.value/255.0), alpha: CGFloat(alphaSlider!.value))
        IJProgressView.shared.showProgressView()
        setCloseTimer()
    }
    
    @IBAction func leftButtonTapped(_ sender: UIBarButtonItem) {
        print(#function)
        let size = IJProgressView.shared.size
        IJProgressView.shared.size = CGSize(width: size.width - 5, height: size.height - 5)
    }
    
    @IBAction func rightButtonTapped(_ sender: UIBarButtonItem) {
        print(#function)
        let size = IJProgressView.shared.size
        IJProgressView.shared.size = CGSize(width: size.width + 5, height: size.height + 5)
    }
}
