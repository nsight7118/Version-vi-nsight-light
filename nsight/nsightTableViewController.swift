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
   
    var selectedId: Int = 0
    
    override func viewDidLoad() {
        self.tableView.delegate = self
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
    
        
        self.view.backgroundColor = UIColor(red:0.61, green: 0.80, blue: 0.40, alpha:1.0)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(back))
        populate()
           //self.tableView.backgroundColor = UIColor.lightGray
        //tableView.dataSource = self;
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140

        
        self.tableView?.register(EmailCell.self, forCellReuseIdentifier: "email")
        self.tableView?.register(TitleCell.self, forCellReuseIdentifier: "title")
        self.tableView?.register(TitleTextCell.self, forCellReuseIdentifier: "title_text")
        self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "comment")
        
        tableView?.dataSource = viewModel
       
    }
    
    @objc func logout()
    {
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func back()
    {
        var ctrls = tabBarController?.viewControllers
        
        ctrls?.remove(at: 1)
        
        tabBarController?.viewControllers = ctrls
        
        tabBarController?.selectedIndex = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        populate()
    }
    
    
    func populate()
    {
        selectedId = UserDefaults.standard.integer(forKey: "id")
        
        let i = discussions.discusions[Int(selectedId)]
        
        var imgs = [UIImage]()
        
        imgs.append(#imageLiteral(resourceName: "Image"))
        imgs.append(#imageLiteral(resourceName: "2"))
        imgs.append(#imageLiteral(resourceName: "English"))
        imgs.append(#imageLiteral(resourceName: "5"))
        imgs.append(#imageLiteral(resourceName: "6"))
        imgs.append(#imageLiteral(resourceName: "7"))
        imgs.append(#imageLiteral(resourceName: "1"))
        
        let item1 = DiscussionViewModelEmailItem(email:i.title!);
        let item2 =  DiscussionVIewModelTitleItem(image:imgs[Int(selectedId)])
        let item3 = DiscussionViewModelEmailItem(email: i.profile_email!)
        let item4 = DiscussionViewModelTitleTextItem(email:i.title!)
        let item5 = DiscussionViewModelEmailItem(email:i.clasification!)
        let item6 = DiscussionViewModelCommentsItem(comments: [Comment]())
        let item7 = DiscussionViewModelAboutItem(_details:i.content!)
        viewModel.items.append(item2)
        viewModel.items.append(item4)
        viewModel.items.append(item7)
        viewModel.items.append(item6)
        viewModel.items.append(item5)
        viewModel.items.append(item3)
        //viewModel.items.append(item1)
        //viewModel.items.append(item4)
        
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // Here, we use NSFetchedResultsController
        // And we simply use the section name as title
        
        let vw = UIView()
        
        // Dequeue with the reuse identifier
        let cell = self.tableView.dequeueReusableHeaderFooterView(withIdentifier: "TableSectionFooter")
       
        let btn = UIButton()
        
        btn.titleLabel?.text = "more.."
        
        vw.addSubview((cell)!)
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section
        {
        case 0: return 340
        case 1: return 40
        case 2: return 300
        default: return 40
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        switch section
        {
        case 0: return 0
        case 1: return 0
        default: return 4
        }
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath)
        
    {
        if (indexPath.section == 1)
        {
        //self.navigationController?.navigationBar.isHidden = true
        
        performSegue(withIdentifier: "Reader" , sender: nil)
        }
        else if (indexPath.section == 2)
        {
            //self.navigationController?.navigationBar.isHidden = true
            
            performSegue(withIdentifier: "ConversationView" , sender: nil)
        }
        //let sb = UIStoryboard(name: "Main", bundle: nil)
        
        //let vc = sb.instantiateViewController(withIdentifier:"Conversation") as! ConversationViewController
        //self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    /*
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    
        let vw = UIView()
     
        let tv = UITextView()
        
        tv.text = "Nalin"
        
        vw.addSubview(tv)
        
        tv.leftAnchor.constraint(equalTo:vw.leftAnchor).isActive = true
        tv.topAnchor.constraint(equalTo: vw.topAnchor).isActive = true
        tv.bottomAnchor.constraint(equalTo: vw.bottomAnchor).isActive = true
        tv.rightAnchor.constraint(equalTo: vw.rightAnchor).isActive = true
 
        vw.backgroundColor = UIColor(red:0.65, green: 0.84, blue: 0.65, alpha:1.0)
        
        return vw
    }
 */
    
}
