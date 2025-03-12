//
//  SignupViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 12/3/25.
//

import UIKit

protocol SignupViewControllerDelegate: AnyObject {
    func userCreated(username: String, password: String)
}

class SignupViewController: UIViewController {
    @IBOutlet weak var repeatPasswordTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var userNameTxtF: UITextField!

    weak var delegate: SignupViewControllerDelegate?
    
    private let viewModel = SignupViewModel()
    
    @IBAction func didTapBackground(_ sender: Any) {
        self.view.endEditing(true) //close keyboard
    }
    
    @IBAction func registerTapped(_ sender: Any) {
        self.view.endEditing(true) //close keyboard
        if self.viewModel.isFormValid() {
            showAlert(with: "Created!") { _ in
                guard let username = self.viewModel.username, let password = self.viewModel.password else { return }
                self.delegate?.userCreated(username: username, password: password)
                self.navigationController?.popViewController(animated: true)
            }
        } else {
            showAlert(with: "Not valid. Please make sure username is not empty, password in not empty and password is the same as repeat password")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        repeatPasswordTxtField.delegate = self
        passwordTxtField.delegate = self
        userNameTxtF.delegate = self
    }
    
    private func showAlert(with message: String, completionBlock: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: completionBlock))
        self.present(alert, animated: true, completion: nil)
    }
    
}

extension SignupViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == userNameTxtF {
            viewModel.username = textField.text
        } else if textField == passwordTxtField {
            viewModel.password = textField.text
        } else if textField == repeatPasswordTxtField {
            viewModel.repeatPassword = repeatPasswordTxtField.text
        }
    }
}
