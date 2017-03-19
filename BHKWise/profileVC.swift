//
//  profileVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class profileVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        setupnavigation()
        view.addSubview(mainContainer)
        setupMainContainer()
        mainContainer.addSubview(upContainerBox)
        setUpContainer()
        mainContainer.addSubview(profileImgContainerBox)
        setUpprofileImgContainerBox()
        profileImgContainerBox.addSubview(profileImg)
        setupprofileImg()
        profileImgContainerBox.addSubview(profileImgEditIconbgView)
        setupprofileImgEditIconbgView()
        profileImgEditIconbgView.addSubview(profileImgEditIcon)
        setupprofileImgEditIcon()
        
        upContainerBox.addSubview(firstNameBox)
        setupFirstNameBox()
        upContainerBox.addSubview(lineView)
        setupLineView()
        firstNameBox.addSubview(nameLabel)
        setupNameLabel()
        
        
        upContainerBox.addSubview(emailBox)
        setupemailBox()
        upContainerBox.addSubview(emailBoxlineView)
        setupemailBoxlineView()
        firstNameBox.addSubview(emailLabel)
        setupemailLabel()
        
        
        upContainerBox.addSubview(phoneBox)
        setupphoneBox()
        upContainerBox.addSubview(phoneBoxlineView)
        setupphoneBoxlineView()
        firstNameBox.addSubview(phoneLabel)
        setupphoneLabel()
        
        
        upContainerBox.addSubview(passwordBox)
        setuppasswordBox()
        upContainerBox.addSubview(passwordBoxlineView)
        setuppasswordBoxlineView()
        firstNameBox.addSubview(passwordLabel)
        setuppasswordLabel()
        
        
    }
    
    
    func setupnavigation(){
        navigationController?.navigationBar.barTintColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        navigationController?.navigationBar.isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        navigationItem.title = "Profile"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "save", style: .plain, target: self, action: #selector(handleSave))
        
    }
    
    // main container
    let mainContainer:UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    func setupMainContainer (){
        
        mainContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainContainer.topAnchor.constraint(equalTo: view.topAnchor,constant: 185).isActive = true
        mainContainer.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mainContainer.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
    // up container
    let upContainerBox:UIView = {
        let upContainer = UIView()
        upContainer.backgroundColor = UIColor.white
        upContainer.layer.cornerRadius = 6
        upContainer.layer.masksToBounds = false
        upContainer.translatesAutoresizingMaskIntoConstraints = false
        var layer = upContainer.layer
        layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.4)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 2
        
        return upContainer
    }()
    
    func setUpContainer (){
        
        upContainerBox.centerXAnchor.constraint(equalTo: mainContainer.centerXAnchor).isActive = true
        upContainerBox.topAnchor.constraint(equalTo: view.topAnchor,constant: 96).isActive = true
        upContainerBox.widthAnchor.constraint(equalTo: mainContainer.widthAnchor,constant: -30).isActive = true
        upContainerBox.heightAnchor.constraint(equalToConstant: 320).isActive = true
        
    }
    
    let profileImgContainerBox:UIView = {
        let upContainer = UIView()
        upContainer.backgroundColor = UIColor.white
        upContainer.layer.cornerRadius = 6
        upContainer.layer.masksToBounds = false
        upContainer.translatesAutoresizingMaskIntoConstraints = false
        var layer = upContainer.layer
        layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue:0/255.0, alpha: 0.5).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.4)
        layer.shadowOpacity = 1.6
        layer.shadowRadius = 2.6
        
        return upContainer
    }()
    
    func setUpprofileImgContainerBox(){
        
        profileImgContainerBox.rightAnchor.constraint(equalTo: upContainerBox.rightAnchor,constant: -15).isActive = true
        profileImgContainerBox.bottomAnchor.constraint(equalTo: upContainerBox.topAnchor,constant: 70).isActive = true
        profileImgContainerBox.widthAnchor.constraint(equalToConstant: 120).isActive = true
        profileImgContainerBox.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
    }
    
    let profileImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "profile")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    func setupprofileImg(){
        
        profileImg.centerXAnchor.constraint(equalTo: profileImgContainerBox.centerXAnchor).isActive = true
        profileImg.centerYAnchor.constraint(equalTo: profileImgContainerBox.centerYAnchor).isActive = true
        profileImg.widthAnchor.constraint(equalToConstant: 60).isActive = true
        profileImg.heightAnchor.constraint(equalToConstant: 65).isActive = true
    }
    
    
    let profileImgEditIconbgView: UIView = {
        let img = UIView()
        img.layer.cornerRadius = 3
        img.layer.masksToBounds = true
        img.backgroundColor = UIColor(red: 151/255.0, green: 151/255.0, blue:151/255.0, alpha: 1)
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    func setupprofileImgEditIconbgView(){
        
        profileImgEditIconbgView.rightAnchor.constraint(equalTo: profileImgContainerBox.rightAnchor,constant: -7).isActive = true
        profileImgEditIconbgView.bottomAnchor.constraint(equalTo: profileImgContainerBox.bottomAnchor,constant: -7).isActive = true
        profileImgEditIconbgView.widthAnchor.constraint(equalToConstant: 12).isActive = true
        profileImgEditIconbgView.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
    
    let profileImgEditIcon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "editicon")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    func setupprofileImgEditIcon(){
        
        profileImgEditIcon.centerXAnchor.constraint(equalTo: profileImgEditIconbgView.centerXAnchor).isActive = true
        profileImgEditIcon.centerYAnchor.constraint(equalTo: profileImgEditIconbgView.centerYAnchor).isActive = true
        profileImgEditIcon.widthAnchor.constraint(equalToConstant: 6).isActive = true
        profileImgEditIcon.heightAnchor.constraint(equalToConstant: 6).isActive = true
    }
    
    
    
    
    // creating first name  box
    let firstNameBox:UITextField = {
        let firstName = UITextField()
        firstName.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        firstName.borderStyle = .none
        firstName.textColor = UIColor.black
        firstName.translatesAutoresizingMaskIntoConstraints = false
        return firstName
    }()
    
    func setupFirstNameBox(){
        
        firstNameBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        firstNameBox.topAnchor.constraint(equalTo: upContainerBox.topAnchor,constant: 15).isActive = true
        firstNameBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -160).isActive = true
        firstNameBox.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
    
    let lineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1.0)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
        
    }()
    
    func setupLineView(){
        
        lineView.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        lineView.topAnchor.constraint(equalTo: firstNameBox.bottomAnchor).isActive = true
        lineView.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -160).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    let nameLabel:UILabel = {
        let name = UILabel()
        name.text = "Name"
        name.font = UIFont(name: "AvenirNext-Medium", size: 16)
        name.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        name.backgroundColor = UIColor.clear
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    func setupNameLabel (){
        
        nameLabel.leftAnchor.constraint(equalTo: firstNameBox.leftAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: firstNameBox.topAnchor).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    
    
    
    
    
    
    // creating email  box
    let emailBox:UITextField = {
        let emailBox = UITextField()
        emailBox.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        emailBox.borderStyle = .none
        emailBox.textColor = UIColor.black
        emailBox.translatesAutoresizingMaskIntoConstraints = false
        return emailBox
    }()
    
    func setupemailBox(){
        
        emailBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        emailBox.topAnchor.constraint(equalTo: lineView.bottomAnchor,constant: 24).isActive = true
        emailBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -7).isActive = true
        emailBox.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
    
    let emailBoxlineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1.0)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
        
    }()
    
    func setupemailBoxlineView(){
        
        emailBoxlineView.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        emailBoxlineView.topAnchor.constraint(equalTo: emailBox.bottomAnchor).isActive = true
        emailBoxlineView.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        emailBoxlineView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    let emailLabel:UILabel = {
        let name = UILabel()
        name.text = "Email"
        name.font = UIFont(name: "AvenirNext-Medium", size: 16)
        name.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        name.backgroundColor = UIColor.clear
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    func setupemailLabel (){
        
        emailLabel.leftAnchor.constraint(equalTo: emailBox.leftAnchor).isActive = true
        emailLabel.topAnchor.constraint(equalTo: emailBox.topAnchor).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        emailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    
    
    
    
    // creating phone  box
    let phoneBox:UITextField = {
        let phoneBox = UITextField()
        phoneBox.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        phoneBox.borderStyle = .none
        phoneBox.textColor = UIColor.black
        phoneBox.translatesAutoresizingMaskIntoConstraints = false
        return phoneBox
    }()
    
    func setupphoneBox(){
        
        phoneBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        phoneBox.topAnchor.constraint(equalTo: emailBoxlineView.bottomAnchor,constant: 24).isActive = true
        phoneBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -7).isActive = true
        phoneBox.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
    
    let phoneBoxlineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1.0)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
        
    }()
    
    func setupphoneBoxlineView(){
        
        phoneBoxlineView.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        phoneBoxlineView.topAnchor.constraint(equalTo: phoneBox.bottomAnchor).isActive = true
        phoneBoxlineView.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        phoneBoxlineView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    let phoneLabel:UILabel = {
        let name = UILabel()
        name.text = "Phone"
        name.font = UIFont(name: "AvenirNext-Medium", size: 16)
        name.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        name.backgroundColor = UIColor.clear
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    func setupphoneLabel (){
        
        phoneLabel.leftAnchor.constraint(equalTo: phoneBox.leftAnchor).isActive = true
        phoneLabel.topAnchor.constraint(equalTo: phoneBox.topAnchor).isActive = true
        phoneLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        phoneLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    
    
    
    
    
    // creating change password  box
    let passwordBox:UITextField = {
        let passwordBox = UITextField()
        passwordBox.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        passwordBox.borderStyle = .none
        passwordBox.textColor = UIColor.black
        passwordBox.translatesAutoresizingMaskIntoConstraints = false
        return passwordBox
    }()
    
    func setuppasswordBox(){
        
        passwordBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        passwordBox.topAnchor.constraint(equalTo: phoneBoxlineView.bottomAnchor,constant: 24).isActive = true
        passwordBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -7).isActive = true
        passwordBox.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    
    
    let passwordBoxlineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1.0)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
        
    }()
    
    func setuppasswordBoxlineView(){
        
        passwordBoxlineView.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        passwordBoxlineView.topAnchor.constraint(equalTo: passwordBox.bottomAnchor).isActive = true
        passwordBoxlineView.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        passwordBoxlineView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    let passwordLabel:UILabel = {
        let name = UILabel()
        name.text = "Change password"
        name.font = UIFont(name: "AvenirNext-Medium", size: 16)
        name.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        name.backgroundColor = UIColor.clear
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    func setuppasswordLabel (){
        
        passwordLabel.leftAnchor.constraint(equalTo: passwordBox.leftAnchor).isActive = true
        passwordLabel.topAnchor.constraint(equalTo: passwordBox.topAnchor).isActive = true
        passwordLabel.widthAnchor.constraint(equalTo: passwordLabel.widthAnchor).isActive = true
        passwordLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
}


extension profileVC {
    
    func handleSave(){
        print(123)
        
    }
    
    
}
