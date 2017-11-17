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
        
        if email == "" || password == "" {
            
            //pop-up wprowadz email/pass bo sa braki
            
        } else {
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                if error == nil {
                    print("You have successfully logged in")
                } else {
                    print("chujowka ziomeczku")
                }
            }
        }
    }
}

