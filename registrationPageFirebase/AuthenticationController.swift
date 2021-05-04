//
//  ViewController.swift
//  registrationPageFirebase
//
//  Created by Aleksander Kulikov on 01.05.2021.
//

import UIKit

class AuthenticationController: UIViewController {
    var auth = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(auth)
        
        auth.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            auth.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            auth.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            auth.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            auth.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        auth.text = "Чё так долго ???"
        auth.backgroundColor = .brown
        auth.textAlignment = .center
        auth.font = UIFont.systemFont(ofSize: 40)
        auth.layer.cornerRadius = 0.5
        
    }
    



}

