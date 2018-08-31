//
//  nsightTableViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/20/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class nsightTableViewController: UITableViewController {
    
    var viewModel = DiscussionViewModel()
    
    
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        //tableView.dataSource = self;
        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "title")
        
        tableView?.dataSource = viewModel
        
    }
    
    
    
}
