//
//  NsightViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/18/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class NsightViewController : UIViewController,  UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    let dnahue = UIColor(red:172/255, green:178/255, blue:128/255,alpha: 1.0)

    self.view.backgroundColor = UIColor(red:0.61, green: 0.80, blue: 0.40, alpha:1.0)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
     }
    
    @objc func logout()
    {
      dismiss(animated: true, completion: nil)
        
    }
}
