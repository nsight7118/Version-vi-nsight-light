//
//  DiscussionViewModelAttributesItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionViewModelAttributesItem : DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType
    {
        return .discussionAttributes
        
    }
    
    var sectionTitile: String {
        return "Attributes"
    }
    
    var rowCount: Int {
        return attributes.count
    }
    
    var attributes = [Attribute]()
    
    init(attributes:[Attribute]){
        self.attributes = attributes
    }
}
