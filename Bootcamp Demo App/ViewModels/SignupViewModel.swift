//
//  SignupViewModel.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 12/3/25.
//

import Foundation

class SignupViewModel {
    var username: String?
    var password: String?
    var repeatPassword: String?
    
    func isFormValid() -> Bool {
        username?.isEmpty == false &&
        password?.isEmpty == false &&
        repeatPassword == password
    }
}
