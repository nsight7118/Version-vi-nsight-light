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
        self.tableView.delegate = self
        super.viewDidLoad()
        
        //self.tableView.backgroundColor = UIColor.lightGray
        //tableView.dataSource = self;
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140

        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        self.tableView?.register(TitleCell.self, forCellReuseIdentifier: "title")
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "comment")
        
        tableView?.dataSource = viewModel
        
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
        
    {
        performSegue(withIdentifier: "ConversationView" , sender: 2)
    }
    
    
    
    
}
