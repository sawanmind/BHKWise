//
//  RegisterVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    
    let registerUrl = "http://bhkwise.com/BHKwiseApi/ExcelListHousingAPI?userid=&deviceid="
    
    
    let inputsContainerViewForLogin: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(hexString: "#242f38")
        button.setTitle("Register", for: .normal)
        button.layer.cornerRadius = 2
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        // button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email Address"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let mobilenumber: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Contact Number"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    let fullname: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Full Name"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry   = true
        return tf
    }()
    let confirmpasswordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Confirm Password"
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.isSecureTextEntry   = true
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerThroughApi()
        
        
        navigationItem.title = "Create an Account"
        view.backgroundColor = UIColor.white
        view.addSubview(inputsContainerViewForLogin)
        setupInputContainerForLogin()
        view.addSubview(loginButton)
        setuploginButton()
        
        let img = UIImage(named: "cancel")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(handlecancel))
    }
    
    
    func handlecancel(){
        
        dismiss(animated: true, completion: nil)
    }
    
    func setupInputContainerForLogin(){
        
        inputsContainerViewForLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerViewForLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        inputsContainerViewForLogin.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        inputsContainerViewForLogin.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        inputsContainerViewForLogin.addSubview(fullname)
        inputsContainerViewForLogin.addSubview(emailTextField)
        inputsContainerViewForLogin.addSubview(mobilenumber)
        inputsContainerViewForLogin.addSubview(passwordTextField)
        inputsContainerViewForLogin.addSubview(confirmpasswordTextField)
        
        
        //need x, y, width, height constraints
        fullname.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        fullname.topAnchor.constraint(equalTo: inputsContainerViewForLogin.topAnchor).isActive = true
        
        fullname.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        fullname.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //need x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: fullname.bottomAnchor, constant: 10).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //need x, y, width, height constraints
        mobilenumber.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        mobilenumber.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        
        mobilenumber.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        mobilenumber.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        //need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: mobilenumber.bottomAnchor, constant: 10).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        //need x, y, width, height constraints
        confirmpasswordTextField.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        confirmpasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10).isActive = true
        
        confirmpasswordTextField.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        confirmpasswordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
    }
    
    func setuploginButton(){
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputsContainerViewForLogin.bottomAnchor, constant: 25).isActive = true
        loginButton.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
    }
    
}
