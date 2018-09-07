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
    
    func filterContentForSearchText(_ searchText: String, scope: String ) {
        filteredDiscussions = discussions.filter({( discussion : Discussion) -> Bool in
            
            let doesCategoryMatch = (scope == "All") || (discussion.audience == scope)
            
            if searchBarIsEmpty() {
                return doesCategoryMatch
            } else {
                return doesCategoryMatch && discussion.audience!.lowercased().contains(searchText.lowercased())
            }
        })

        
        
        
        self.tableView!.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    func isFiltering() -> Bool {
        let searchBarScopeIsFiltering = searchController.searchBar.selectedScopeButtonIndex != 0
        return searchController.isActive && (!searchBarIsEmpty() || searchBarScopeIsFiltering)

    }
    /*
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
     */
    
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
        searchController.searchResultsUpdater = self as! UISearchResultsUpdating
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Discussions"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        tableView!.dataSource = self
        tableView!.delegate = self
        
        definesPresentationContext = true
        
        let data = SampleDiscussions()
        
        searchController.searchBar.scopeButtonTitles = ["All", "Students", "Parents","Teachers","Principals"]
        searchController.searchBar.delegate = self
        
        
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

extension NsightViewController: UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
    }
}


extension NsightViewController: UISearchResultsUpdating {
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
    
    
    
}




