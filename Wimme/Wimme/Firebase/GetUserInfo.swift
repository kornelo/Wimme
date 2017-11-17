//
//  GetUserInfo.swift
//  Wimme
//
//  Created by Młody-MBP on 17.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation
import Firebase

//private(set) public var username: String
//private(set) public var firstName: String?
//private(set) public var lastName: String?
//private(set) public var email: String
//private(set) public var rating: Int?
//private(set) public var frequency: Int?
//private(set) public var photoUrl: URL?
//private(set) public var description: String?
//private(set) public var profileComments: Array<String>?

class GetUserInfo {
    static func getUserInfo(completion: @escaping (Profile) -> Void){
        var userInformations = Profile()
        var ref: DatabaseReference!
        ref = Database.database().reference()
        let userID = Auth.auth().currentUser?.uid
        ref.child("users").child(userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            let value = snapshot.value as? NSDictionary
            let username = value?["username"] as? String
            let firstName = value?["firstName"] as? String
            let lastName = value?["lastName"] as? String
            let email = value?["email"] as? String
            let rating = value?["rating"] as? Int
            let frequency = value?["frequency"] as? Int
            let photoUrl = value?["photoUrl"] as? URL
            let description = value?["description"] as? String
            userInformations = Profile(username: username, firstName: firstName, lastName: lastName, email: email, rating: rating, frequency: frequency, photoUrl: photoUrl, description: description)
            completion(userInformations)
        }) { (error) in
            print(error.localizedDescription)
        }
    }
}
