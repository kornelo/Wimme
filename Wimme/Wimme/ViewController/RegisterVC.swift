//
//  RegisterVC.swift
//  Wimme
//
//  Created by Tom on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var reTypePasswordTF: UITextField!
    @IBOutlet weak var informationL: UILabel!
    @IBOutlet weak var RegisterButtonOutlet: UIButton!
    @IBOutlet weak var lastNameTF: UITextField!
    @IBOutlet weak var firstNameTF: UITextField!
    
    var checkUserName = false
    var checkEmail = false
    var checkPassword = false
    var checkRetypePassword = false
    var checkFirstName = false
    var checkLastName = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RegisterButtonOutlet.isEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func EnableButton(){
        
        if (checkUserName == true && checkEmail == true && checkPassword == true && checkRetypePassword == true && checkFirstName == true && checkLastName == true){
            RegisterButtonOutlet.isEnabled = true
            print(checkRetypePassword," ", checkPassword, " ", checkEmail, " ", checkUserName)
        }else{
            RegisterButtonOutlet.isEnabled = false
        }
    }
    @IBAction func CreateAccount(_ sender: Any) {
        RegisterDbInput.addNewRecord(usrname: userNameTF.text!, fname: firstNameTF.text!, lname: lastNameTF.text!, email: emailTF.text!, pass: passwordTF.text!)
    }

    @IBAction func CheckUserNameTF(_ sender: Any) {
        if ((userNameTF.text?.count)! <= 3)
        {
            informationL.text = "User Name must 3 or more charachter!"
            
        }else{
            informationL.text = ""
            checkUserName = true
        }
        EnableButton()

    }
    @IBAction func CheckEmailTF(_ sender: Any) {
        if(emailTF.text!.isValidEmail() == false)
        {
            informationL.text = "e-mail must have @ sign!"
            
        }else{
            informationL.text = ""
            checkEmail = true
        }
        EnableButton()

        

    }
    @IBAction func CheckPasswordTF(_ sender: Any) {
        if(passwordTF.text!.isPasswordValid() == false)
        {
            informationL.text = "Password must have: 8 letter, 1 capital letter, 1 small letter and 1 special sign!"
        }else{
            informationL.text = ""
            checkPassword = true
        }
        EnableButton()
    }
    @IBAction func CheckRetypePasswordTF(_ sender: Any) {
        
        if(passwordTF.text != reTypePasswordTF.text)
        {
            informationL.text = "Passwords must be this same!"
        }else{
            informationL.text = ""
            checkRetypePassword = true
            print(checkRetypePassword," ", checkPassword, " ", checkEmail, " ", checkUserName)
        }
        EnableButton()

    }
    
    @IBAction func CheckFirstName(_ sender: Any) {
        if ((firstNameTF.text?.count)! <= 3)
        {
            informationL.text = "First Name must 3 or more charachter!"
            
        }else{
            informationL.text = ""
            checkFirstName = true
        }
        EnableButton()
    }
    @IBAction func CheckLastName(_ sender: Any) {
        if ((lastNameTF.text?.count)! <= 3)
        {
            informationL.text = "Last Name must 3 or more charachter!"
            
        }else{
            informationL.text = ""
            checkLastName = true
        }
        EnableButton()
    }

    
}

