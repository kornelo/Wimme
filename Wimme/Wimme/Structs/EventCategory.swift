//
//  Categories.swift
//  Wimme
//
//  Created by Młody-MBP on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation

struct EventCategory {
    private(set) public var categoryName: String
    private(set) public var pictureUrl: URL
    
    init(categoryName: String, pictureUrl: URL) {
        self.categoryName = categoryName
        self.pictureUrl = pictureUrl
    }
}
