//
//  Profile.swift
//  Wimme
//
//  Created by Młody-MBP on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation

public struct Profile {
    private(set) public var username: String?
    private(set) public var firstName: String?
    private(set) public var lastName: String?
    private(set) public var email: String?
    private(set) public var rating: Int?
    private(set) public var frequency: Int?
    private(set) public var photoUrl: URL?
    private(set) public var description: String?
    private(set) public var profileComments: Array<String>?
    
    init(username: String? = nil, firstName: String? = nil, lastName: String? = nil, email: String? = nil, rating: Int? = nil, frequency: Int? = nil, photoUrl: URL? = nil, description: String? = nil, profileComments: Array<String>? = nil) {
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.rating = rating
        self.frequency = frequency
        self.photoUrl = photoUrl
        self.description = description
        self.profileComments = profileComments
    }
}
