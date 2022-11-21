//
//  RegisterViewController.swift
//  FormularioDeRegistro
//
//  Created by TEO on 19/11/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    private struct Const{
        static let existingUser: String = "test@test.com"
        static let emptyField: String = "Uno o mas campos se encuentra vacío"
        static let ERROR_PASSWORD: String = "Las contraseñas no coinciden"
        static let ERROR_USER: String = "El usuario ya existe"
        static let REGISTER_SUCCESSFUL: String = "Registro exitoso"
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var message: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    
    @IBAction func createButtonPressed() {
        validateRegistration()
    }
    
    private  func validateRegistration() {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let confirmPassword = confirmPasswordTextField.text ?? ""
        
        validateData(email: email, password: password, confirmPassword: confirmPassword)
        
    }
    
    private func setUpUI(){
        createButton.layer.cornerRadius = 15
    }
    
    private func setUpResultLabel(message:String){
        resultLabel.isHidden = false
        resultLabel.text = message
    }
    
    private func validateData(email: String, password: String, confirmPassword: String){
        if email == "" || password == "" || confirmPassword == "" {
            message = Const.emptyField
        }else{
            if email != "" && (password != confirmPassword) {
                message = Const.ERROR_PASSWORD
            } else{
                if email == Const.existingUser && (password == confirmPassword) {
                    message = Const.ERROR_USER
                }else{ // Credenciales correctas
                    message = Const.REGISTER_SUCCESSFUL
                }
            }
        }
        setUpResultLabel(message: message)
    }

}

