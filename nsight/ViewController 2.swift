//
//  ViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/12/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let dnahue = UIColor(red:172/255, green:178/255, blue:128/255,alpha: 1.0)
        
        self.view.backgroundColor = dnahue
        
        //var animImages : [UIImage] = []
        
        
        
        var documentsUrl: URL {
            return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        }
        /*
        for cnt in 1...16
        {
            let path = Bundle.main.path(forResource:"2713506_\(cnt)", ofType:"gif")
            let dir = "Anim/"
            //let fileUrl = "2713506_\(cnt)"
            let fileUrl = documentsUrl.appendingPathComponent("\(dir)2713506_\(cnt).gif")
            do {
                let image = try Data(contentsOf:fileUrl)
                let img = UIImage(contentsOfFile: path!)!;             animImages.append(img)
            }
            catch {
                print("error loading image:\(error)")
                
            }
            
        }
        
        self.nsightliv.animationImages = animImages
        self.nsightliv.animationDuration = 1.0
        self.nsightliv.startAnimating()
        let img = #imageLiteral(resourceName: "2713506_1.gif")
        self.nsightliv.image = img
       */
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login_click(_ sender: Any) {
        
        let vctab = storyboard?.instantiateViewController(withIdentifier: "nsightTabController") as! nsightTabController
        vctab.selectedViewController = vctab.viewControllers?[2]
        present(vctab,animated:true, completion:nil)
    }
    
}

