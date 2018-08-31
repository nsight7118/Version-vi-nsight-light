//
//  nsightTabController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/13/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class nsightTabController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    //dismiss(animated: true, completion: nil)
    self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
}

@objc func logout()
{
    dismiss(animated: true, completion: nil)
    
}
    
}

