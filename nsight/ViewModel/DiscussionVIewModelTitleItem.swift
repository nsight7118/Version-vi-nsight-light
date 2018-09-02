//
//  DiscussionVIewModelTitleItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class DiscussionVIewModelTitleItem: DiscussionViewModelItem
{
    var TitlePicture : UIImage
    
    var type: DiscussionViewModelItemType {
        return .title
    }
    
    init(image:UIImage){
        
        TitlePicture = image
        
    }
    
    var sectionTitile: String {
        return "Discussion Topic"
    }
    
}
