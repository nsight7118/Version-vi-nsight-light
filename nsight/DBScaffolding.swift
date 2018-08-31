//
//  DBScaffolding.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/17/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class DBScaffolding
{
    var Posts:[String]
    
    init(){
        Posts = [String]()
    }
    
    func AddPost( post: String){
        
        getPosts()
        Posts.append(post)
    }

    func SavePosts(){
        
        let defaults =
            UserDefaults.standard
        defaults.set(Posts, forKey: "SavedPosts")
        defaults.synchronize()
        
    }
    
    func getPosts(){
        let defaults = UserDefaults.standard
        
        Posts = defaults.stringArray(forKey: "SavedPosts")!
        
    }
}

