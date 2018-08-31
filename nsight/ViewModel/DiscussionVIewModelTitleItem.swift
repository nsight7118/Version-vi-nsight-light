//
//  DiscussionVIewModelTitleItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionVIewModelTitleItem: DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType {
        return .title
    }
    
    var sectionTitile: String {
        return "Discussion Topic"
    }
    
}
