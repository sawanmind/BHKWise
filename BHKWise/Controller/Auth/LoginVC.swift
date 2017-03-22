//
//  LoginVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class LoginVC: UIViewController {
    
    
    
    
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
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 2
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Username"
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
    
    lazy var forgotpassword: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Forgot password?", for: .normal)
        let color = UIColor.gray
        tf.setTitleColor(color, for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    lazy var notregisteredLabel: UILabel = {
        let tf = UILabel()
        tf.text = "Not registered?"
        tf.textColor = UIColor.gray
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var createAnAccount: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Create an Account", for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return tf
    }()
    
    lazy var byLoggingLabel: UILabel = {
        let tf = UILabel()
        tf.text = "By logging in you agree to website"
        tf.textColor = UIColor.gray
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var termsAndCondition: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Terms & Condition,", for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    lazy var privacyPolicy: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Privacy Policy", for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    lazy var disclaimers: UIButton = {
        let tf = UIButton(type: .system)
        tf.setTitle("Disclaimers", for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    lazy var loginWithFacebook: UIButton = {
        let tf = UIButton(type: .system)
        tf.layer.cornerRadius = 2
        tf.layer.masksToBounds = true
        let color = UIColor(hexString: "#4267B2")
        tf.layer.borderWidth = CGFloat(1)
        tf.layer.borderColor = color?.cgColor
        tf.backgroundColor = color
        tf.setTitle("Log in with facebook", for: .normal)
        tf.setTitleColor(UIColor.white, for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    lazy var loginWithGoogle: UIButton = {
        let tf = UIButton(type: .system)
        tf.layer.cornerRadius = 2
        tf.layer.masksToBounds = true
        tf.layer.borderWidth = CGFloat(1)
        let color = UIColor(hexString: "#DD4C39")
        tf.layer.borderColor = color?.cgColor
        tf.backgroundColor = color
        tf.setTitle("Log in with Google", for: .normal)
        tf.setTitleColor(UIColor.white, for: .normal)
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.addTarget(self, action: #selector(handleforgotpassword), for: .touchUpInside)
        return tf
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Skip", style: .plain, target: self, action: #selector(handleSkip))
        navigationItem.title = "Login"
        view.addSubview(inputsContainerViewForLogin)
        setupInputContainerForLogin()
        view.addSubview(loginButton)
        setuploginButton()
        view.addSubview(forgotpassword)
        setupforgotpassword()
        view.addSubview(notregisteredLabel)
        bottomLabelButton()
        view.addSubview(createAnAccount)
        setupregisterButton()
        view.addSubview(byLoggingLabel)
        setuploginglabel()
        view.addSubview(termsAndCondition)
        setuptermsAndCondition()
        view.addSubview(privacyPolicy)
        setupprivacyPolicy()
        view.addSubview(disclaimers)
        setupdisclaimers()
        view.addSubview(loginWithGoogle)
        setupgoogle()
        view.addSubview(loginWithFacebook)
        setupfacebook()
        
    }
    
    
    
    
    
    func setupInputContainerForLogin(){
        
        inputsContainerViewForLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerViewForLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        inputsContainerViewForLogin.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20).isActive = true
        inputsContainerViewForLogin.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        
        inputsContainerViewForLogin.addSubview(emailTextField)
        
        inputsContainerViewForLogin.addSubview(passwordTextField)
        
        //need x, y, width, height constraints
        emailTextField.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        emailTextField.topAnchor.constraint(equalTo: inputsContainerViewForLogin.topAnchor).isActive = true
        
        emailTextField.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        //need x, y, width, height constraints
        passwordTextField.leftAnchor.constraint(equalTo: inputsContainerViewForLogin.leftAnchor).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        
        passwordTextField.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        
        
    }
    
    func setuploginButton(){
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 56).isActive = true
        loginButton.topAnchor.constraint(equalTo: inputsContainerViewForLogin.bottomAnchor, constant: 25).isActive = true
        loginButton.widthAnchor.constraint(equalTo: inputsContainerViewForLogin.widthAnchor).isActive = true
    }
    
    func setupforgotpassword(){
        
        forgotpassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        forgotpassword.heightAnchor.constraint(equalToConstant: 20).isActive = true
        forgotpassword.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10).isActive = true
        forgotpassword.widthAnchor.constraint(equalTo: forgotpassword.widthAnchor).isActive = true
    }
    
    func bottomLabelButton(){
        
        
        notregisteredLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -70).isActive = true
        notregisteredLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        notregisteredLabel.topAnchor.constraint(equalTo: forgotpassword.bottomAnchor, constant: 5).isActive = true
        notregisteredLabel.widthAnchor.constraint(equalTo: notregisteredLabel.widthAnchor).isActive = true
        
        
        
    }
    
    func setupregisterButton(){
        createAnAccount.leftAnchor.constraint(equalTo: notregisteredLabel.rightAnchor,constant: 5).isActive = true
        createAnAccount.heightAnchor.constraint(equalToConstant: 20).isActive = true
        createAnAccount.topAnchor.constraint(equalTo: forgotpassword.bottomAnchor, constant: 5).isActive = true
        createAnAccount.widthAnchor.constraint(equalTo: createAnAccount.widthAnchor).isActive = true
        
    }
    
    func setuploginglabel(){
        byLoggingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        byLoggingLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        byLoggingLabel.topAnchor.constraint(equalTo: notregisteredLabel.bottomAnchor, constant: 7).isActive = true
        byLoggingLabel.widthAnchor.constraint(equalTo: byLoggingLabel.widthAnchor).isActive = true
    }
    func setuptermsAndCondition(){
        
        termsAndCondition.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: -50).isActive = true
        termsAndCondition.heightAnchor.constraint(equalToConstant: 20).isActive = true
        termsAndCondition.topAnchor.constraint(equalTo: byLoggingLabel.bottomAnchor, constant: 5).isActive = true
        termsAndCondition.widthAnchor.constraint(equalTo: termsAndCondition.widthAnchor).isActive = true
    }
    
    func setupprivacyPolicy(){
        
        privacyPolicy.leftAnchor.constraint(equalTo: termsAndCondition.rightAnchor,constant: 5).isActive = true
        privacyPolicy.heightAnchor.constraint(equalToConstant: 20).isActive = true
        privacyPolicy.topAnchor.constraint(equalTo: byLoggingLabel.bottomAnchor, constant: 5).isActive = true
        privacyPolicy.widthAnchor.constraint(equalTo: privacyPolicy.widthAnchor).isActive = true
        
    }
    
    func setupdisclaimers(){
        disclaimers.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        disclaimers.heightAnchor.constraint(equalToConstant: 20).isActive = true
        disclaimers.topAnchor.constraint(equalTo: privacyPolicy.bottomAnchor, constant: 5).isActive = true
        disclaimers.widthAnchor.constraint(equalTo: disclaimers.widthAnchor).isActive = true
        
    }
    
    func setupgoogle(){
        loginWithGoogle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginWithGoogle.heightAnchor.constraint(equalToConstant: 46).isActive = true
        loginWithGoogle.bottomAnchor.constraint(equalTo: inputsContainerViewForLogin.topAnchor, constant: -20).isActive = true
        loginWithGoogle.widthAnchor.constraint(equalTo: emailTextField.widthAnchor).isActive = true
        
    }
    func setupfacebook(){
        
        loginWithFacebook.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginWithFacebook.heightAnchor.constraint(equalToConstant: 46).isActive = true
        loginWithFacebook.bottomAnchor.constraint(equalTo: loginWithGoogle.topAnchor, constant: -12).isActive = true
        loginWithFacebook.widthAnchor.constraint(equalTo: emailTextField.widthAnchor).isActive = true
    }
    
}












extension LoginVC {
    
    func handleSkip(){
        
        dismiss(animated: true, completion: nil)
        
    }
    
    func handleforgotpassword(){
        
        print("forgot")
    }
    
    func handleRegister(){
        
        let new = UINavigationController(rootViewController: RegisterVC())
        self.present(new, animated: true, completion: nil)
    
    
    }
    func handleLogin(){
        
        let new = mainVC()
        self.present(new, animated: true, completion: nil)
        
        
        
    }
    
}
