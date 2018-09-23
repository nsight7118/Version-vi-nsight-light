//
//  DiscussionViewModelEmailItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionViewModelTitleTextItem: DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType {
        return .title_text
    }
    
    var sectionTitile: String {
        return "Profile Email"
    }
    
    var email: String
    
    init(email: String) {
        self.email = email
    }
    
}
