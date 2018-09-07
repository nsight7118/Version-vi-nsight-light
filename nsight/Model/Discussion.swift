//
//  Discussion.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/20/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class Discussion
{
    var id: Int8
    var title: String?
    var content: String?
    var profile_email: String?
    var about: String?
    //var comments = [Comment]()
    //var discussionAttributes = [Attribute]()
    var audience: String?
    var clasification: String?
    
    init(_Id:Int8, _title:String?, _content:String?, _email:String?, _about:String?, _audience:String?, _classification:String?)
    {
        id = _Id
        title = _title
        content = _content
        profile_email = _email
        about = _about
        audience = _audience
        clasification = _classification
    }
}
