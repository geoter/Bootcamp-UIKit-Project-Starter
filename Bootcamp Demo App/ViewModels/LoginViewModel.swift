//
//  LoginViewModel.swift
//  Bootcamp Demo App
//
//  Created by George Termentzoglou on 12/3/25.
//

class LoginViewModel {
    private var username: String?
    private var password: String?
    
    func signupUser(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    func validCredentials(username: String?, password: String?) -> Bool {
        guard let storedUsername = self.username, let storedPassword = self.password else { return false }
        return storedUsername == username && storedPassword == password
    }
}
