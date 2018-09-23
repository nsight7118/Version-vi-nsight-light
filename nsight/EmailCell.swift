//
//  EmailCell.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/28/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class EmailCell : UITableViewCell, ProtocolElelmentCell {
    
    var email : String?
    
    var emailView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
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
        self.addSubview(emailView)
        
            emailView.backgroundColor = UIColor(red:0.95,green: 0.97, blue: 0.91, alpha:1.0)
       
         emailView.leftAnchor.constraint(equalTo:self.leftAnchor).isActive = true
        emailView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        emailView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        emailView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let email = email {
            emailView.text = email
            
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
