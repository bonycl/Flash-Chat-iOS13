//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by D i on 11/09/ 23 , 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        //if we override superclass method we should use "super class type"
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // for loop case
        titleLabel.text = ""
        var charIndex = 0.0
        //creating a loop for animate a label
        let titleText = "⚡️FlashChat"

        for letter in titleText {
            //print("-")
//            print(0.1 * charIndex)
//            print(letter)
            //using timer. *charIndex is a implementation of additional pause
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)

            }
            charIndex += 1
        }
    }
    

}
