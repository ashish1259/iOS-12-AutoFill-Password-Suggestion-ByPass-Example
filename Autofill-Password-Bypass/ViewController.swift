//
//  ViewController.swift
//  Autofill-Password-Bypass
//
//  Created by Ashish Verma on 2019-03-20.
//  Copyright © 2019 Ashish Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Class Methods
    private func setupView() {
        passwordTextField.delegate = self
    }
    
    // MARK: - Outlets
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

// MARK: - UITextField Delegate Methods
extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField == self.passwordTextField
            && !self.passwordTextField.isSecureTextEntry) {
            self.passwordTextField.isSecureTextEntry = true
        }
        
        return true
    }
}

