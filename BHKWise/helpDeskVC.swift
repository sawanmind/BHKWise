//
//  feedbackVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class helpDeskVC: UIViewController, UIScrollViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        navigationController?.navigationBar.barTintColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        navigationController?.navigationBar.isTranslucent = false
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        navigationItem.title = "Help Desk"
        
        
        scrollview.contentOffset = CGPoint(x: 0, y: 0)
        scrollview.contentSize = CGSize(width: view.bounds.width, height: 700)
        
        setupbgconatinerView()
        setupscrollview()
        scrollview.addSubview(mainContainer)
        setupMainContainer()
        mainContainer.addSubview(upContainerBox)
        setUpContainer()
        upContainerBox.addSubview(firstNameBox)
        setupFirstNameBox()
        upContainerBox.addSubview(lineView)
        setupLineView()
        upContainerBox.addSubview(lastNameBox)
        setupLastNameBox()
        upContainerBox.addSubview(line2View)
        setupLine2View()
        upContainerBox.addSubview(emailBox)
        setupEmailBox()
        upContainerBox.addSubview(line3View)
        setupLine3View()
        upContainerBox.addSubview(passwordBox)
        setupPasswordBox()
        upContainerBox.addSubview(line4View)
        setupLine4View()
        upContainerBox.addSubview(QueryLabel)
        setupQueryLabel()
        upContainerBox.addSubview(queryBox)
        setupQueryBox()
        
        firstNameBox.addSubview(nameLabel)
        setupNameLabel()
        lastNameBox.addSubview(phnLabel)
        setupPhnLabel()
        emailBox.addSubview(emailLabel)
        setupEmailLabel()
        passwordBox.addSubview(subjectLabel)
        setupSubjectLabel()
        view.addSubview(submitButton)
        setupSubmitButton()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    // background container
    
    let bgconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupbgconatinerView(){
        view.addSubview(bgconatinerView)
        bgconatinerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bgconatinerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        bgconatinerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        bgconatinerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
    }
    
    
    // scroll view
    
    
    lazy var scrollview : UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = UIColor.navigationColor
        view.delegate = self
        view.isScrollEnabled = true
        view.isUserInteractionEnabled = true
        view.alwaysBounceVertical = true
        view.showsVerticalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    
    func setupscrollview(){
        bgconatinerView.addSubview(scrollview)
        scrollview.centerXAnchor.constraint(equalTo: bgconatinerView.centerXAnchor).isActive = true
        scrollview.centerYAnchor.constraint(equalTo: bgconatinerView.centerYAnchor).isActive = true
        scrollview.widthAnchor.constraint(equalTo: bgconatinerView.widthAnchor).isActive = true
        scrollview.heightAnchor.constraint(equalTo: bgconatinerView.heightAnchor).isActive = true
        
    }
    
    
    
    // main container
    let mainContainer:UIView = {
        let container = UIView()
        container.backgroundColor = UIColor(red: 216.0/255.0, green: 216.0/255.0, blue: 216.0/255.0, alpha: 1.0)
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    func setupMainContainer (){
        
        mainContainer.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        mainContainer.topAnchor.constraint(equalTo: scrollview.topAnchor,constant: 155).isActive = true
        mainContainer.widthAnchor.constraint(equalTo: scrollview.widthAnchor).isActive = true
        mainContainer.heightAnchor.constraint(equalTo: scrollview.heightAnchor).isActive = true
        
    }
    
    // up container
    let upContainerBox:UIView = {
        let upContainer = UIView()
        upContainer.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        upContainer.layer.cornerRadius = 7
        upContainer.layer.masksToBounds = true
        upContainer.translatesAutoresizingMaskIntoConstraints = false
        var layer = upContainer.layer
        layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.4)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 5
        
        return upContainer
    }()
    
    func setUpContainer (){
        
        upContainerBox.centerXAnchor.constraint(equalTo: mainContainer.centerXAnchor).isActive = true
        upContainerBox.topAnchor.constraint(equalTo: scrollview.topAnchor).isActive = true
        upContainerBox.widthAnchor.constraint(equalTo: mainContainer.widthAnchor,constant: -30).isActive = true
        upContainerBox.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
    }
    
    // creating first name  box
    let firstNameBox:UITextField = {
        let firstName = UITextField()
        firstName.font = UIFont(name: "AvenirNext-Medium", size: 18)
        firstName.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        firstName.borderStyle = .none
        firstName.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        firstName.translatesAutoresizingMaskIntoConstraints = false
        return firstName
    }()
    
    func setupFirstNameBox(){
        
        firstNameBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        firstNameBox.topAnchor.constraint(equalTo: upContainerBox.topAnchor).isActive = true
        firstNameBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor).isActive = true
        firstNameBox.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    // creating single line view
    
    let lineView:UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(red: 227.0/255.0, green: 227.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
        
    }()
    
    func setupLineView(){
        
        lineView.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        lineView.topAnchor.constraint(equalTo: firstNameBox.bottomAnchor).isActive = true
        lineView.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    
    // creating last name box
    
    let lastNameBox : UITextField = {
        let lastName = UITextField()
        
        lastName.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        lastName.backgroundColor = UIColor.clear
        lastName.borderStyle = .none
        lastName.translatesAutoresizingMaskIntoConstraints = false
        return lastName
    }()
    
    func setupLastNameBox (){
        
        lastNameBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor, constant: 15).isActive = true
        lastNameBox.topAnchor.constraint(equalTo: lineView.bottomAnchor).isActive = true
        lastNameBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor).isActive = true
        lastNameBox.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    // creating single line 2 view
    
    let line2View:UIView = {
        let line2 = UIView()
        line2.backgroundColor = UIColor(red: 227.0/255.0, green: 227.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        line2.translatesAutoresizingMaskIntoConstraints = false
        return line2
        
    }()
    
    func setupLine2View(){
        
        line2View.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        line2View.topAnchor.constraint(equalTo: lastNameBox.bottomAnchor).isActive = true
        line2View.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        line2View.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    
    // creating email  box
    
    let emailBox : UITextField = {
        let email = UITextField()
        
        email.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        email.backgroundColor = UIColor.clear
        email.borderStyle = .none
        email.translatesAutoresizingMaskIntoConstraints = false
        return email
    }()
    
    func setupEmailBox (){
        
        emailBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor, constant: 15).isActive = true
        emailBox.topAnchor.constraint(equalTo: line2View.bottomAnchor).isActive = true
        emailBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor).isActive = true
        emailBox.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    // creating single line 3 view
    
    let line3View:UIView = {
        let line3 = UIView()
        line3.backgroundColor = UIColor(red: 227.0/255.0, green: 227.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        line3.translatesAutoresizingMaskIntoConstraints = false
        return line3
        
    }()
    
    func setupLine3View(){
        
        line3View.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        line3View.topAnchor.constraint(equalTo: emailBox.bottomAnchor).isActive = true
        line3View.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        line3View.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    
    // creating password  box
    
    let passwordBox : UITextField = {
        let pass = UITextField()
        
        pass.contentVerticalAlignment = UIControlContentVerticalAlignment.bottom
        pass.backgroundColor = UIColor.clear
        pass.borderStyle = .none
        
        pass.translatesAutoresizingMaskIntoConstraints = false
        return pass
    }()
    
    func setupPasswordBox (){
        
        passwordBox.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor, constant: 15).isActive = true
        passwordBox.topAnchor.constraint(equalTo: line3View.bottomAnchor).isActive = true
        passwordBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor).isActive = true
        passwordBox.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
    }
    
    
    // creating single line 4 view
    
    let line4View:UIView = {
        let line4 = UIView()
        line4.backgroundColor = UIColor(red: 227.0/255.0, green: 227.0/255.0, blue: 227.0/255.0, alpha: 1.0)
        line4.translatesAutoresizingMaskIntoConstraints = false
        return line4
        
    }()
    
    func setupLine4View(){
        
        line4View.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        line4View.topAnchor.constraint(equalTo: passwordBox.bottomAnchor).isActive = true
        line4View.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        line4View.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
    }
    
    // name label
    
    let nameLabel:UILabel = {
        let name = UILabel()
        name.text = "Name"
        name.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        name.backgroundColor = UIColor.clear
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    func setupNameLabel (){
        
        nameLabel.leftAnchor.constraint(equalTo: firstNameBox.leftAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: firstNameBox.topAnchor,constant: 20).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    // phn label
    
    let phnLabel:UILabel = {
        let phn = UILabel()
        phn.text = "Phone"
        phn.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        phn.backgroundColor = UIColor.clear
        phn.translatesAutoresizingMaskIntoConstraints = false
        
        return phn
    }()
    
    func setupPhnLabel (){
        
        phnLabel.leftAnchor.constraint(equalTo: lastNameBox.leftAnchor).isActive = true
        phnLabel.topAnchor.constraint(equalTo: lastNameBox.topAnchor,constant: 20).isActive = true
        phnLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        phnLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    //  Email label
    
    let emailLabel:UILabel = {
        let emailL = UILabel()
        emailL.text = "Email"
        emailL.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        emailL.backgroundColor = UIColor.clear
        emailL.translatesAutoresizingMaskIntoConstraints = false
        
        return emailL
    }()
    
    func setupEmailLabel (){
        
        emailLabel.leftAnchor.constraint(equalTo: emailBox.leftAnchor).isActive = true
        emailLabel.topAnchor.constraint(equalTo: emailBox.topAnchor,constant: 20).isActive = true
        emailLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        emailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    // Password label
    
    let subjectLabel:UILabel = {
        let subjectL = UILabel()
        subjectL.text = "Subject"
        subjectL.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        subjectL.backgroundColor = UIColor.clear
        subjectL.translatesAutoresizingMaskIntoConstraints = false
        
        return subjectL
    }()
    
    func setupSubjectLabel (){
        
        subjectLabel.leftAnchor.constraint(equalTo: passwordBox.leftAnchor).isActive = true
        subjectLabel.topAnchor.constraint(equalTo: passwordBox.topAnchor,constant: 20).isActive = true
        subjectLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        subjectLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    // Query label
    
    let QueryLabel:UILabel = {
        let QueryL = UILabel()
        QueryL.text = "Query"
        QueryL.font = UIFont(name: "AvenirNext-Medium", size: 18)
        QueryL.textColor = UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        QueryL.backgroundColor = UIColor.clear
        QueryL.translatesAutoresizingMaskIntoConstraints = false
        
        return QueryL
    }()
    
    func setupQueryLabel (){
        
        QueryLabel.leftAnchor.constraint(equalTo: upContainerBox.leftAnchor,constant: 15).isActive = true
        QueryLabel.topAnchor.constraint(equalTo: line4View.bottomAnchor,constant: 20).isActive = true
        QueryLabel.widthAnchor.constraint(equalTo: QueryLabel.widthAnchor).isActive = true
        QueryLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
    }
    
    
    // Query box
    
    let queryBox:UITextView = {
        let query = UITextView()
        query.backgroundColor = UIColor(red: 238.0/255.0, green: 238.0/255.0, blue: 238.0/255.0, alpha: 1.0)
        query.layer.borderWidth = 1.4
        query.layer.cornerRadius = 7
        query.layer.masksToBounds = true
        query.layer.borderColor = UIColor(red: 227.0/255.0, green: 227.0/255.0, blue: 227.0/255.0, alpha: 1.0).cgColor
        query.translatesAutoresizingMaskIntoConstraints = false
        return query
        
    }()
    
    func setupQueryBox(){
        
        queryBox.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        queryBox.topAnchor.constraint(equalTo: QueryLabel.bottomAnchor,constant: 15).isActive = true
        queryBox.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor,constant: -30).isActive = true
        queryBox.heightAnchor.constraint(equalToConstant: 180).isActive = true
        
    }
    
    // creating a button
    
    let submitButton:UIButton = {
        
        let submit = UIButton()
        submit.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        submit.setTitle("Submit", for: .normal)
        submit.titleLabel?.font = UIFont(name: "AvenirNext-Bold", size: 16)
        submit.setTitleColor(UIColor(red: 27.0/255.0, green: 162.0/255.0, blue: 32.0/255.0, alpha: 1.0), for: UIControlState.normal)
        submit.layer.cornerRadius = 23
        submit.layer.borderWidth = 0
        submit.layer.borderColor = UIColor.black.cgColor
        submit.translatesAutoresizingMaskIntoConstraints = false
        
        var layer = submit.layer
        layer.shadowColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5).cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.4)
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 5
        return submit
    }()
    
    func setupSubmitButton(){
        
        submitButton.centerXAnchor.constraint(equalTo: upContainerBox.centerXAnchor).isActive = true
        submitButton.topAnchor.constraint(equalTo: upContainerBox.bottomAnchor,constant: 20).isActive = true
        submitButton.widthAnchor.constraint(equalTo: upContainerBox.widthAnchor).isActive = true
        submitButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
    
    
    
    
}
