//
//  RegisterDbInput.swift
//  withMe_alpha
//
//  Created by Młody-MBP on 10.11.2017.
//  Copyright © 2017 Młody-MBP. All rights reserved.
//

import Foundation
import FirebaseDatabase
import Firebase
import FirebaseAuth

class RegisterDbInput {
    
    static func addNewRecord(usrname: String, email: String, pass: String, confirmPass: String)
    {
        if (email == "" && usrname == "" && pass == "" && confirmPass == "") {
            //popup - brak wszystkich danych
        }
        else if (pass != confirmPass) {
            //popup hasla nie sa zgodne ze soba
        }
        else {
            Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                if error == nil {
                    print("You have successfully signed up")
                    let userName = usrname
                    let ref = Database.database().reference()
                    ref.child("users").child(user!.uid).setValue(["username": userName])
                } else {
                    print("error w chuj")
                }
            }
        }
    }
}
