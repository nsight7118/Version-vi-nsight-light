//
//  DiscussionViewModelEmailItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionViewModelAboutItem: DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType {
        return .about
    }
    
    var sectionTitile: String {
        return "About.."
    }
    
    var details: String
    
    init(_details: String) {
        self.details = _details
    }
    
}
