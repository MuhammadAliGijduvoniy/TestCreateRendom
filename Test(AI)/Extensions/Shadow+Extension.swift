//
//  Shadow+Extension.swift
//  Test(AI)
//
//  Created by MuhammadAli on 13/02/24.
//

import Foundation
import UIKit


extension  UILabel {
    
    static func defaultLabelShadow() -> UILabel {
        let lbl = UILabel()
        
        lbl.layer.shadowColor = UIColor.black.cgColor
        lbl.layer.shadowRadius = 20
        lbl.layer.shadowOpacity = 0.3
        lbl.layer.shadowOffset = .init(width: -20, height: 20)
        
        return lbl
    }
    
}

extension  UIView {
    
    static var defaultViewShadow : UIView {
        let lbl = UIView()
        
        lbl.layer.shadowColor = UIColor.black.cgColor
        lbl.layer.shadowRadius = 20
        lbl.layer.shadowOpacity = 0.3
        lbl.layer.shadowOffset = .init(width: -20, height: 20)
        
        return lbl
    }
    
}
