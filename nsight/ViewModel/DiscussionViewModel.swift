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
    
    var items = [DiscussionViewModelItem]()
    
    var com = [Comment]()
    
    
    var sectionRows:[Int:Int] = [DiscussionViewModelItemType.title.rawValue:1,DiscussionViewModelItemType.profile_email.rawValue:2,
        DiscussionViewModelItemType.about.rawValue:1,
        DiscussionViewModelItemType.comments.rawValue:2,
        DiscussionViewModelItemType.discussionAttributes.rawValue:2]
    
    override init() {
        com.append(Comment(id:0,content:"Hi"))
        com.append(Comment(id:1,content:"Hey"))
        
        let item1 = DiscussionViewModelEmailItem(email:"Eureka");
        let item2 = DiscussionVIewModelTitleItem()
        let item3 = DiscussionViewModelCommentsItem(comments: com)
        
        items.append(item3);
        items.append(item1);
        items.append(item2);
        items.append(item1);
        items.append(item2);
        items.append(item1);
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.section]
        switch item.type {
        case .profile_email:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                return cell
            }
        case .title:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                return cell
            }
        case .about:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                return cell
            }
        case .comments:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                return cell
            }
        case .discussionAttributes:
            if let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath) as? EmailCell {
                cell.email = item.sectionTitile
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return items[section].sectionTitile
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
         return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return Array(sectionRows.values)[section]
    }
        
}

