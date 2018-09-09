//
//  DiscussionViewModel.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class DiscussionViewModel: NSObject, UITableViewDataSource {
    
    var data = SampleDiscussions()
    
    var items = [DiscussionViewModelItem]()
    
    var discussions = [Discussion]()
    
    var sectionRows:[Int:Int]
    
    override init() {
        
        items = data.items
        
        sectionRows = [DiscussionViewModelItemType.title.rawValue:1,DiscussionViewModelItemType.profile_email.rawValue:1,
        DiscussionViewModelItemType.about.rawValue:1,
        DiscussionViewModelItemType.comments.rawValue:1,
        DiscussionViewModelItemType.discussionAttributes.rawValue:1];
        
        
    }
/*
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView {
        let returnedView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 25))
        returnedView.backgroundColor = UIColor.green
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 25))
        //label.text = items[section].sectionTitile
        
        returnedView.addSubview(label)
        
        label.leftAnchor.constraint(equalTo: returnedView.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: returnedView.rightAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: returnedView.centerYAnchor).isActive = true
        label.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        return returnedView
        
    }
 */
 /*
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).backgroundView?.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    }
    */
    
    func colorForIndex(index: Int) -> UIColor {
        //let itemCount = tableData.count - 1
        
        return UIColor(red: 1.0, green: 1.0, blue: 0.0, alpha: 1.0)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell,
                   forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = colorForIndex(index: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        
        switch item.type {
        
        case .profile_email:
                    if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                    if let Comments = item as? DiscussionViewModelEmailItem
                    {
                        cell.email = Comments.email
                    }
                    else
                    {
                        cell.email = "notyet"
                    }
                    cell.contentView.backgroundColor = UIColor(red:0.68,green: 0.84, blue: 0.51, alpha:1.0)
                        return cell
            }
        case .title:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "title", for: indexPath) as? TitleCell {
                let title = item as! DiscussionVIewModelTitleItem
                //cell. = title.sectionTitile
                cell.titleImage = title.TitlePicture
                
                return cell
            }
        case .about:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                if let about = item as? DiscussionViewModelAboutItem
                {
                    cell.email = about.details
                }
                else
                {
                    cell.email = "notyet"
                }
                
                cell.accessoryType = .detailDisclosureButton
                cell.contentView.backgroundColor = UIColor(red:0.68,green: 0.84, blue: 0.51, alpha:1.0)
                return cell
            }
        case .comments:
            let cell = tableView.dequeueReusableCell(withIdentifier: "comment", for: indexPath) as UITableViewCell
                
                cell.accessoryType = .detailDisclosureButton
            
                cell.textLabel?.text = "Discussion Forum"
                
            cell.contentView.backgroundColor = UIColor(red:0.68,green: 0.84, blue: 0.51, alpha:1.0)
            return cell
            
        case .discussionAttributes:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                cell.contentView.backgroundColor = UIColor.blue
                return cell
            }
        }
        
        return UITableViewCell()
        
        }
    
    
    
    /*
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let header = items[section].sectionTitile
        return header
    }
    */
    func numberOfSections(in tableView: UITableView) -> Int {
         return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return sectionRows[section]!
    }
        
}

