//
//  NsightReaderController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 9/8/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class NsightReaderController : UIViewController
{
    var Content: String = ""
    
    @IBOutlet weak var Reader: UILabel!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        Reader.text = Content
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(back))
    }
    
    @objc func back(){
        self.dismiss(animated: true, completion: nil)
    }
    
}
