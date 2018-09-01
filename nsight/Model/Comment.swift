//
//  Comment.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/20/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

struct Comment
{
    var _id: Int8?
    var _content: String?
    
    init(id:Int8?, content:String?){
        _id = id
        _content = content
    }
}
