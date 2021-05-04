//
//  SignInViewController.swift
//  registrationPageFirebase
//
//  Created by Aleksander Kulikov on 03.05.2021.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNamTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var singInButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.alpha = 0

        // Do any additional setup after loading the view.
    }

    func checkValid() -> String? {
        if firstNameTextField.text == nil ||
           lastNamTextField.text == nil ||
           emailTextField.text == nil ||
           passwordTextField.text == nil ||
           firstNameTextField.text == "" ||
           lastNamTextField.text == "" ||
           emailTextField.text == "" ||
           passwordTextField.text == "" {
            
            return "Please fill in all fieles"
            }
        
        return nil
    }

    @IBAction func singInPressed(_ sender: UIButton) {
        let error = checkValid()
        
        if error != nil {
            errorLabel.alpha = 1
            errorLabel.text = "Error"
        } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, Error) in
                print("jamp to next view1")
                let db = Firestore.firestore()
                db.collection("users").addDocument(data: [
                    "firstName": self.firstNameTextField.text!,
                    "lastName": self.lastNamTextField.text!,
                    "uid": result!.user.uid
                ]) {(error) in
                    
                if error != nil {
                    self.errorLabel.text = "Error"
                } else {
                    print("jamp to next view")
                    let nc = self.storyboard!.instantiateViewController(identifier: "Authentication")
                    nc.modalPresentationStyle = .fullScreen
                    self.present(nc, animated: true, completion: nil)
                }
                }
            }
        }
         
    }
    

   

}
