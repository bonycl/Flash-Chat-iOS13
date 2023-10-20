//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by D i on 11/09/ 23 , 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase


class RegisterViewController: UIViewController {

    
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        //optional binding
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    //adding descr for error
                    print(e.localizedDescription)
                    self.passwordTextfield.text = ""
                    self.passwordTextfield.isSecureTextEntry = false
                    
                    self.passwordTextfield.placeholder = e.localizedDescription
                } else {
                    //navigate to chatVC
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
    }
    
}
var a = 5
var b = 3
var c = b + a
