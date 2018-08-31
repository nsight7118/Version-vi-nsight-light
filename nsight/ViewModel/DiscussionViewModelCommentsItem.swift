//
//  DiscussionViewModelCommentsItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class DiscussionViewModelCommentsItem:DiscussionViewModelItem
{
    
    
    
    var type: DiscussionViewModelItemType {
        return .comments
    }
    
    var sectionTitile: String {
        return "Comments"
    }
    
    var rowCount: Int {
        return comments.count
    }
    
    var comments = [Comment]()
    
    init(comments: [Comment]){
        self.comments = comments
    }
}
