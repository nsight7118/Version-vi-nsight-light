//
//  DiscussionViewModelItem.swift
//  nsight
//
//  Created by Nalin Pinnagoda on 8/21/18.
//  Copyright © 2018 Nalin Pinnagoda. All rights reserved.
//

import Foundation
import UIKit

protocol DiscussionViewModelItem
{
    var type: DiscussionViewModelItemType { get }
    var rowCount: Int { get }
    var sectionTitile: String { get }
}

extension DiscussionViewModelItem {
    var rowCount : Int {
        return 1
    }
}
