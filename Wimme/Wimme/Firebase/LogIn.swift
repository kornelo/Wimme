//
//  LogIn.swift
//  Wimme
//
//  Created by Młody-MBP on 17.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation
import FirebaseAuth

class LogIn {
    static func login(email: String, password: String) {
        var userInformations = Profile()
        if email == "" || password == "" {
            //pop-up wprowadz email/pass bo sa braki
        } else {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil {
                    print("You have successfully logged in")
                    UpdateUserProfile.updateProfile(firstName: "Lukasz", lastName: "Wieczorek", description: "Gdansk")
                    GetUserInfo.getUserInfo(){userInformations in userInformations}
                    print(userInformations.username, userInformations.firstName, userInformations.lastName, userInformations.email, userInformations.rating, userInformations.frequency, userInformations.photoUrl, userInformations.description)

                } else {
                    print("chujowka ziomeczku")
                }
            }
        }
    }
}

