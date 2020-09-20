//
//  Extensions.swift
//  UberLike
//
//  Created by Adila on 7/11/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.


import UIKit

extension UIView{
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop : CGFloat = 0,
                paddingLeft : CGFloat = 0,
                paddingBottom : CGFloat = 0,
                paddingRight : CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil){
       
        translatesAutoresizingMaskIntoConstraints = false //telling the progromatic constrains
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func centerX(inView view : UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func centerY(inView view : UIView) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
}
//
//  Extention.swift
//  UberLike
//
//  Created by Adila on 7/30/20.
//  Copyright © 2020 Adila Abudureheman. All rights reserved.
//

import Foundation