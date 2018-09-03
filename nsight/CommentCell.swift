//
//  EmailCell.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/28/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class CommentCell : UITableViewCell, ProtocolElelmentCell
{
    func configure(withModel: DiscussionViewModelItem) {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
}
