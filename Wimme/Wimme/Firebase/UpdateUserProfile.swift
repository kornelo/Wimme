//
//  UpdateUserProfile.swift
//  Wimme
//
//  Created by Młody-MBP on 17.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation
import Firebase

class UpdateUserProfile {
    static func updateProfile(firstName: String? = nil, lastName: String? = nil, photoUrl: URL? = nil, description: String? = nil) {
        let ref = Database.database().reference()
        let userID = Auth.auth().currentUser?.uid
        ref.child("users").child(userID!).setValue(["firstName": firstName, "lastName": lastName, "photoUrl": photoUrl, "description": description])
    }
}
