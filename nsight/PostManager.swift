//
//  PostManager.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/16/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation

class PostManager{
    
    var Db : DBScaffolding
    
    init(){
        Db = DBScaffolding()
    }
    
    func addPost( newPost: Any ){
        Db.SavePosts()
    }

}
