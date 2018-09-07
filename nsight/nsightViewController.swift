//
//  NsightViewController.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/18/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

class NsightViewController : UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let searchController = UISearchController(searchResultsController: nil)
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [DiscussionViewModelItem]()
    
    var discussions = [Discussion]()
    
    var filteredDiscussions = [Discussion]()
    
    var discussionSearchResult = [Discussion]()
    
    func searchBarIsEmpty() -> Bool {
        // Returns true if the text is empty or nil
        return searchController.searchBar.text?.isEmpty ?? true
    }
    
    func filterContentForSearchText(_ searchText: String, scope: String = "All") {
        filteredDiscussions = discussions.filter({( discussion : Discussion) -> Bool in
            return (discussion.title?.lowercased().contains(searchText.lowercased()))!
        })
        
        self.tableView!.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func isFiltering() -> Bool {
        return searchController.isActive && !searchBarIsEmpty()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filteredDiscussions.count
        }
        
        return discussions.count
    }
    

    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let _discussion:Discussion
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if isFiltering() {
            _discussion = filteredDiscussions[indexPath.row]
        } else {
            _discussion = discussions[indexPath.row]
        }
        
        cell.textLabel?.text = _discussion.title
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Setup the Search Controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Discussions"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        tableView!.dataSource = self
        tableView!.delegate = self
        
        definesPresentationContext = true
        
        let data = SampleDiscussions()
        
        discussions = data.discusions
          
    //let dnahue = UIColor(red:172/255, green:178/255, blue:128/255,alpha: 1.0)

    self.view.backgroundColor = UIColor(red:0.61, green: 0.80, blue: 0.40, alpha:1.0)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItemStyle.plain, target: self, action: #selector(logout))
     }
    
    @objc func logout()
    {
      dismiss(animated: true, completion: nil)
        
    }
    
}

extension NsightViewController: UISearchResultsUpdating {
    // MARK: - UISearchResultsUpdating Delegate
    func updateSearchResults(for searchController: UISearchController) {

 filterContentForSearchText(searchController.searchBar.text!)
        

    }
}

