//
//  LoginViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 12/3/25.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let username = self.userNameTextField.text
        let password = self.passwordTextField.text
        if viewModel.validCredentials(username: username, password: password) {
            showAlert(with: "Log in success!")
        } else {
            showAlert(with: "Log in error, please signup")
        }
    }
    
    private func showAlert(with message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        guard let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "signupVC") as? SignupViewController else { return }
        signupVC.delegate = self
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}

extension LoginViewController: SignupViewControllerDelegate {
    func userCreated(username: String, password: String) {
        viewModel.signupUser(username: username, password: password)
    }
}
