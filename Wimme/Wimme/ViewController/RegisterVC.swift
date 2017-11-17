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
    var check = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateAccount(_ sender: Any) {
        RegisterDbInput.addNewRecord(usrname: userNameTF.text!, email: emailTF.text!, pass: passwordTF.text!, confirmPass: reTypePasswordTF.text!)
    }
    func checkTF(){
        
        
        if ((userNameTF.text?.count)! >= 3)
        {
            check = true
        }
        if (emailTF.text?.contains("@"))!
        {
            check = true
        }
        
    }
    @IBAction func CheckUserNameTF(_ sender: Any) {
        if ((userNameTF.text?.count)! <= 3)
        {
            informationL.text = "User Name must 3 or more charachter!"
            
        }else{
            informationL.text = ""
        }
    }
    @IBAction func CheckEmailTF(_ sender: Any) {
        if(emailTF.text!.isValidEmail() == false)
        {
            informationL.text = "e-mail must have @ sign!"
            
        }else{
            informationL.text = ""
        }
    }
    @IBAction func CheckPasswordTF(_ sender: Any) {
        if(isPasswordValid(passwordTF.text!) == false)
        {
            informationL.text = "Password must have: 8 letter, 1 capital letter, 1 small letter and 1 special sign!"
        }else{
            informationL.text = ""
        }
    }
    @IBAction func CheckRetypePasswordTF(_ sender: Any) {
        
        if(passwordTF.text != reTypePasswordTF.text)
        {
            informationL.text = "Passwords must be this same!"
        }else{
            informationL.text = ""
        }
    }
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[A-Z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,32}")
        return passwordTest.evaluate(with: password)
    }
    
    
}
extension String {
    func isValidEmail() -> Bool {
        // here, `try!` will always succeed because the pattern is valid
        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return regex.firstMatch(in: self, options: [], range: NSRange(location: 0, length: count)) != nil
    }
    


}
