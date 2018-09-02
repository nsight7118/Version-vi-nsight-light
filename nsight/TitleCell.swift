//
//  EmailCell.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/28/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class TitleCell : UITableViewCell, ProtocolElelmentCell {
    
    var title : String?
    
    var titleImage : UIImage?
    
    var titleView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var titleImageView : UIImageView = {
        var imageView = UIImageView(frame: CGRect(x: 30, y: 40, width: 200, height: 300))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    func configure(withModel: DiscussionViewModelItem) {
        //item = withModel
    }
    /*
    required init(email: String) {
        var email = email
    }
    */
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //var item = DiscussionViewModelEmailItem(email: email)
        //configure(withModel: item)
        self.addSubview(titleView)
        self.addSubview(titleImageView)
        
    titleImageView.leftAnchor.constraint(equalTo:self.leftAnchor).isActive = true
        titleImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleImageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let email = title {
            titleView.text = email
        }
        if let image = titleImage {
            titleImageView.image = image
        }
    }
    
    /*var item: DiscussionViewModelItem {
        
        didSet {
            
            guard let item = item as? DiscussionViewModelEmailItem
            
            else
            {
                return
            }
            
            
            
        }
        
        }*/
    
}
