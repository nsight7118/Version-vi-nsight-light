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
        tableView.rowHeight = UITableViewAutomaticDimension
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
    
    
           //self.tableView.backgroundColor = UIColor.lightGray
        //tableView.dataSource = self;
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140

        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        self.tableView?.register(TitleCell.self, forCellReuseIdentifier: "title")
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "comment")
        
        tableView?.dataSource = viewModel
        
    }
    
    @objc func logout()
    {
        dismiss(animated: true, completion: nil)
        
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
        
    {
        
        //self.navigationController?.navigationBar.isHidden = true
        
        performSegue(withIdentifier: "ConversationView" , sender: nil)
        
        //let sb = UIStoryboard(name: "Main", bundle: nil)
        
        //let vc = sb.instantiateViewController(withIdentifier:"Conversation") as! ConversationViewController
        //self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let vw = UIView()
     /*
        let tv = UITextView()
        
        tv.text = "Nalin"
        
        vw.addSubview(tv)
        
        tv.leftAnchor.constraint(equalTo:vw.leftAnchor).isActive = true
        tv.topAnchor.constraint(equalTo: vw.topAnchor).isActive = true
        tv.bottomAnchor.constraint(equalTo: vw.bottomAnchor).isActive = true
        tv.rightAnchor.constraint(equalTo: vw.rightAnchor).isActive = true
      */
        vw.backgroundColor = UIColor(red:0.65, green: 0.84, blue: 0.65, alpha:1.0)
        
        return vw
    }
 
    
}
