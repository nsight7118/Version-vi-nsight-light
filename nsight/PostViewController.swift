//
//  CommentViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/16/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class PostViewController : ViewController
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var postOutlet: UITextView!
    
    @IBAction func postCommit(_ sender: Any) {
        
        let postManager = PostManager()
        postManager.addPost(newPost:postOutlet.text!)
        
        tabBarController?.selectedIndex = 1
    
    }
    
}
