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
    
    var discussions = SampleDiscussions()
   
    var selectedId: Int8 = 0
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
    
        populate()
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
    
    func populate()
    {
        let i = discussions.discusions[Int(selectedId)]
        
        var imgs = [UIImage]()
        
        imgs.append(#imageLiteral(resourceName: "Image"))
        imgs.append(#imageLiteral(resourceName: "English"))
        
        let item1 = DiscussionViewModelEmailItem(email:i.title!);
        let item2 =  DiscussionVIewModelTitleItem(image:imgs[Int(selectedId)])
        
        
        viewModel.items.append(item2);
        viewModel.items.append(item1);
        viewModel.items.append(item1);
        viewModel.items.append(item1);
        viewModel.items.append(item1);    }
    
    
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
