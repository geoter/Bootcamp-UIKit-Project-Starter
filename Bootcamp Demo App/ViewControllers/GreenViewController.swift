//
//  GreenViewController.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 11/3/25.
//

import UIKit

class GreenViewController: UIViewController, RedViewControllerDelegate {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    private func showRed(with text: String) {
        let redVC = self.storyboard?.instantiateViewController(withIdentifier: "redVC") as? RedViewController
        redVC?.input = text
        redVC?.onClick = { inputText in
            print("On click: \(inputText ?? "-")")
        }
        redVC?.delegate = self
        self.present(redVC!, animated: true)
    }
    
    func closeMe() {
        self.dismiss(animated: true)
    }
}

extension GreenViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        showRed(with: textField.text ?? "")
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = nil
    }
}
