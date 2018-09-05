//
//  NsightViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/18/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class NsightViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate
{
    
    
    @IBOutlet weak var tableOut: UITableView!
    
    var items = [DiscussionViewModelItem]()
    
    var discussions = [Discussion]()
    
    var discussionSearchResult = [Discussion]()
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let data = SampleDiscussions()
        
        discussions = data.discusions
        
        self.tableOut.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);
        
        self.tableOut!.dataSource = discussions as? UITableViewDataSource
        
        
        
    //let dnahue = UIColor(red:172/255, green:178/255, blue:128/255,alpha: 1.0)

    self.view.backgroundColor = UIColor(red:0.61, green: 0.80, blue: 0.40, alpha:1.0)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
     }
    
    @objc func logout()
    {
      dismiss(animated: true, completion: nil)
        
    }
    
    func filterContents(searchText: String)
    {
        if self.discussions.count == 0 {
            //self.discussionSearchResult = [nil]
            return
        }
        
        self.discussionSearchResult = self.discussions.filter({(discussion:Discussion)->Bool in
            return discussion.title!.lowercased().range(of: searchText.lowercased()) != nil
        })
    }
    
    func searchDisplayController(_ controller: UISearchDisplayController!, shouldReloadTableForSearch searchString: String!) -> Bool {
        self.filterContents(searchText: searchString)
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.searchDisplayController!.searchResultsTableView {
            return self.discussionSearchResult.count
        } else {
            return self.discussions.count
        }
    }
    
    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableOut!.dequeueReusableCell(withIdentifier: "Cell") as! UITableViewCell
        
        var arrayOfDiscussions:Array<Discussion>?
        if tableView == self.searchDisplayController!.searchResultsTableView {
            arrayOfDiscussions = self.discussionSearchResult
        } else {
            arrayOfDiscussions = self.discussions
        }
        
        if arrayOfDiscussions != nil && arrayOfDiscussions!.count >= indexPath.row
        {
            _ = arrayOfDiscussions![indexPath.row]
            
            if tableView != self.searchDisplayController!.searchResultsTableView {
                
            }
        }
        
        return cell
    }
    
       func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
            super.prepare(for: segue, sender: sender)
        if let detailVC = segue.destination as? NsightViewController
        {
            // gotta check if we're currently searching
            if self.searchDisplayController!.isActive {
                let indexPath = self.searchDisplayController?.searchResultsTableView.indexPathForSelectedRow
                if indexPath != nil {
                    detailVC.discussions = [self.discussionSearchResult[indexPath!.row]]
                }
            } else {
                let indexPath = self.tableOut?.indexPathForSelectedRow
                if indexPath != nil {
                    detailVC.discussions = [self.discussions[indexPath!.row]]
                }
            }
        }
    }
}
