//
//  LoginScreen.swift
//  Wimme
//
//  Created by DudEski on 11/11/2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    /*var userNameList = ["gagatek5", "newTest"]
    var emailList = ["gagatek5@gmail.com", "newTest@gmail.com"]
    var passwordList = ["test", "test2"];*/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func TryLogIn(_ sender: Any) {
        LogIn.login(email: userNameTF.text!, password: passwordTF.text!)
        /*for i in 0...userNameList.count - 1{
            if(userNameTF.text == userNameList[i] || userNameTF.text == emailList[i])
            {
                if(passwordTF.text == passwordList[i]){
                    performSegue(withIdentifier: "LogIn", sender: sender)
                    break
                }else
                {
                    let alertController = UIAlertController(title: "", message:"Wrong password", preferredStyle: UIAlertControllerStyle.alert)
                    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
            }
            else
            {
                let alertController = UIAlertController(title: "", message:"User Name or e-mail does not exist", preferredStyle: UIAlertControllerStyle.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                
                self.present(alertController, animated: true, completion: nil)
            }
        }*/
    }
    


    
    @IBAction func RegisterForm(_ sender: Any) {
        performSegue(withIdentifier: "Register", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "LogIn")
        {
            let mainApp: TabBarView = segue.destination as! TabBarView
            //mainApp.userName = userNameTF.text!
        }
        if(segue.identifier == "Register")
        {
            let registerForm: RegisterVC = segue.destination as! RegisterVC
            
        }
    }
    
    

}

