//
//  LoginViewController.swift
//  registrationPageFirebase
//
//  Created by Aleksander Kulikov on 03.05.2021.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.alpha = 0

        // Do any additional setup after loading the view.
    }
    
    func checkValidLogin() -> String? {
        if emailTextField.text == nil ||
            passwordTextField.text == nil ||
            emailTextField.text == "" ||
            passwordTextField.text == "" {
            
            return "Please fill in all fieles"
            }
        
        return nil
    }
    

    @IBAction func loginButtonPressed(_ sender: Any) {
        
        let error = checkValidLogin()
        
        if error != nil {
            errorLabel.alpha = 1
            errorLabel.text = "Error password/email"
        } else {
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, error) in
        if error != nil {
            self.errorLabel.text = "Error"
        } else { let nc = self.storyboard!.instantiateViewController(identifier: "Authentication")
            nc.modalPresentationStyle = .fullScreen
            self.present(nc, animated: true, completion: nil) }
    }
  }
}
}


