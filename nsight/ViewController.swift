//
//  ViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/12/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var i: Int = 0
    
    @IBOutlet weak var logo: UIImageView!
    @IBAction func SignInAction(_ sender: Any) {
        performSegue(withIdentifier: "SignIn", sender: sender)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dnahue = UIColor(red:172/255, green:178/255, blue:128/255,alpha: 1.0)
        
        self.view.backgroundColor = dnahue
        
        
        logo.image = #imageLiteral(resourceName: "cell")
        
        animateLogo()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateLogo()
        i = i + 1
        
    }

    func animateLogo()
    {
        if ( i == 0 )
        {
            return
        }
        
        UIView.animate(withDuration: 1,animations: { self.logo.frame.origin.y += 40})
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

