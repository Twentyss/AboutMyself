//
//  ViewController.swift
//  AboutMyself
//
//  Created by Илья Першин on 24.10.2020.
//

import UIKit


class ViewController: UIViewController {

    let user = User()
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPaswwordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customizeUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        let destinationVC = tabBarController.viewControllers?.first as! WelcomeViewController
        destinationVC.username = user.username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func logOutButtonAction(segue: UIStoryboardSegue) {
        clearTextField(usernameTextField)
        clearTextField(passwordTextField)
        dismiss(animated: true)
    }

    private func customizeUI() {
        customizeButton(loginButton)
        customizeButton(forgotPaswwordButton)
        customizeButton(forgotUsernameButton)
        
        customizeTextField(usernameTextField)
        usernameTextField.placeholder = "Enter your username"
        usernameTextField.isUserInteractionEnabled = true
        
        customizeTextField(passwordTextField)
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.isSecureTextEntry = true
    }
    
    private func customizeButton(_ button: UIButton) {
        button.layer.borderColor = CGColor(red: 0.047, green: 0.36, blue: 0.84, alpha: 1)
        button.layer.borderWidth = 1
        button.layer.backgroundColor = CGColor(red: 1, green: 1, blue: 1, alpha: 0)
        button.layer.cornerRadius = button.frame.height / 4
    }
    private func customizeTextField(_ textField: UITextField) {
        textField.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1)
        textField.layer.borderWidth = 1
        textField.layer.backgroundColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0)
        textField.layer.cornerRadius = textField.frame.height / 4
        textField.textColor = .black
        textField.tintColor = .black
    }
    
    private func clearTextField(_ textField: UITextField) {
        textField.text = ""
    }
}

extension ViewController {
    @IBAction func forgotUsernameButtonAction() {
        showAlertWithOKButton(title: "Забыли имя пользователя?",
                              message: "Подсказка: Username")
    }
    
    
    @IBAction func forgotPasswordButtonAction() {
        showAlertWithOKButton(title: "Забыли пароль?",
                              message: "Подсказка: Password")
    }
    
    @IBAction func loginAction(_ sender: Any) {
        if usernameTextField.text == user.username,
           passwordTextField.text == user.password {
            
            performSegue(withIdentifier: "showTabBar", sender: sender)
            
        } else {
            showAlertWithOKButton(title: "Неверный логин или пароль!",
                                  message: "Попробуйте еще раз.")
            
            clearTextField(usernameTextField)
            clearTextField(passwordTextField)
        }
    }
    
    private func showAlertWithOKButton(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK",
                                      style: UIAlertAction.Style.default,
                                      handler: nil))
        
        self.present(alert, animated: true)
    }
    
}
