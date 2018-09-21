//
//  NsightTabBar.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 9/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class NsightTabBar: UITabBar {
    
    /*
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 100
        
        return sizeThatFits
    }*/
}

extension UITabBar {
    
    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        sizeThatFits.height = 60 // adjust your size here
        return sizeThatFits
    }
}
