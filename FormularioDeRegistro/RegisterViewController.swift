//
//  RegisterViewController.swift
//  FormularioDeRegistro
//
//  Created by TEO on 19/11/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    
    @IBAction func createButtonPressed() {
    }
    
    private func setUpUI(){
        createButton.layer.cornerRadius = 15
    }

}

