//
//  ViewController.swift
//  Testapp
//
//  Created by rikokurniawan on 5/12/18.
//  Copyright © 2018 rikokurniawan. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

    @IBOutlet weak var emailtextfield: UITextField!
    @IBOutlet weak var passwordtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func createaccounttapped(_ sender: Any) {
    if let email = emailtextfield.text,
      let  password = passwordtextfield.text {
        Auth.auth().createUser(withEmail: email, password: password, completion: {user, Error in
            if let firebaseError = Error {
                print(firebaseError.localizedDescription)
                return
            }
            print("sukses!")
        })
    }
}
    
    @IBAction func loginTapped(_ sender: Any) {
        if let email = emailtextfield.text,
            let  password = passwordtextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { (user, Error) in
                if let firebaseError = Error {
                    print(firebaseError.localizedDescription)
                    return
                }
                print("sukses!")
            }
        }
    }
}

