//
//  CustomProgressBar.swift
//  MyApp
//
//  Created by Sarmad Zaheer on 06/07/2023.
//

import UIKit
import Foundation


class CustomProgressBar: UIProgressView{
    
    override func layoutSubviews() {
            super.layoutSubviews()

            let maskLayerPath = UIBezierPath(roundedRect: bounds, cornerRadius: 4.0)
            let maskLayer = CAShapeLayer()
            maskLayer.frame = self.bounds
            maskLayer.path = maskLayerPath.cgPath
            layer.mask = maskLayer
        }
    
}

