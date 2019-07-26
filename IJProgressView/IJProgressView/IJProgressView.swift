//
//  IJProgressView.swift
//  IJProgressView
//
//  Created by Isuru Nanayakkara on 1/14/15.
//  Copyright (c) 2015 Appex. All rights reserved.
//

import UIKit

open class IJProgressView {
    public static let shared = IJProgressView()
    
    var containerView = UIView()
    var progressView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    
    public var backgroundColor = UIColor(hex: 0xffffff, alpha: 0.3)
    public var forgroundColor = UIColor(hex: 0x444444, alpha: 0.7)
    public var size = CGSize(width: 80, height: 80)

    open func showProgressView() {
        guard let topView = UIApplication.shared.keyWindow?.rootViewController?.view else {
            return
        }
        
        containerView.backgroundColor = self.backgroundColor
        containerView.translatesAutoresizingMaskIntoConstraints = false

        progressView.backgroundColor = self.forgroundColor
        progressView.clipsToBounds = true
        progressView.layer.cornerRadius = 10
        progressView.translatesAutoresizingMaskIntoConstraints = false

        activityIndicator.style = .whiteLarge
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false

        UIApplication.shared.keyWindow?.addSubview(containerView)
        progressView.addSubview(activityIndicator)
        containerView.addSubview(progressView)

        containerView.heightAnchor.constraint(equalTo: topView.heightAnchor).isActive = true
        containerView.widthAnchor.constraint(equalTo: topView.widthAnchor).isActive = true
        containerView.leadingAnchor.constraint(equalTo: topView.leadingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topView.topAnchor).isActive = true

        progressView.heightAnchor.constraint(equalToConstant: self.size.height).isActive = true
        progressView.widthAnchor.constraint(equalToConstant: self.size.width).isActive = true
        progressView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        progressView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true

        activityIndicator.heightAnchor.constraint(equalToConstant: self.size.height/2).isActive = true
        activityIndicator.widthAnchor.constraint(equalToConstant: self.size.width/2).isActive = true
        activityIndicator.centerYAnchor.constraint(equalTo: progressView.centerYAnchor).isActive = true
        activityIndicator.centerXAnchor.constraint(equalTo: progressView.centerXAnchor).isActive = true

        activityIndicator.startAnimating()
    }
    
    open func hideProgressView() {
        DispatchQueue.main.async {
            self.activityIndicator.stopAnimating()
            self.containerView.removeFromSuperview()
        }
    }
}

extension UIColor {
    convenience init(hex: UInt32, alpha: CGFloat) {
        let red = CGFloat((hex & 0xFF0000) >> 16)/256.0
        let green = CGFloat((hex & 0xFF00) >> 8)/256.0
        let blue = CGFloat(hex & 0xFF)/256.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
