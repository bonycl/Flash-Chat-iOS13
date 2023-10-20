//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by D i on 11/09/ 23 , 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase 


class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                    self.passwordTextfield.text = ""
                    self.passwordTextfield.isSecureTextEntry = false
                    
                    self.passwordTextfield.placeholder = e.localizedDescription
                } else {
                    //navigate to chatVC
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
    }
    
}
