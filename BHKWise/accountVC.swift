//
//  accountVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class accountVC: UIViewController{
    
    
    
    let lblcolor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        setupNavigation()
        
        view.addSubview(profilebgView)
        profilebgView.addSubview(profileImg)
        profilebgView.addSubview(profilelbl)
        profilebgView.addSubview(profileImgarrow)
        
        view.addSubview(mylistbgView)
        mylistbgView.addSubview(mylistImg)
        mylistbgView.addSubview(mylistlbl)
        mylistbgView.addSubview(mylistImgarrow)
        mylistbgView.addSubview(mylistseperatorView)
        
        
        
        
        mylistbgView.addSubview(recomendationImg)
        mylistbgView.addSubview(recomendationlbl)
        mylistbgView.addSubview(recomendationImgarrow)
        mylistbgView.addSubview(recomendationseperatorView)
        
        
        
        mylistbgView.addSubview(notificationImg)
        mylistbgView.addSubview(notificationlbl)
        mylistbgView.addSubview(notificationImgarrow)
        mylistbgView.addSubview(notificationseperatorView)
        
        
        
        mylistbgView.addSubview(purchaseReportImg)
        mylistbgView.addSubview(purchaseReportlbl)
        mylistbgView.addSubview(purchaseReportImgarrow)
        
        
        view.addSubview(logoutbtnbgView)
        logoutbtnbgView.addSubview(logoutbtnImg)
        logoutbtnbgView.addSubview(logoutbtnlbl)
        
        loadViewSetup()
        
        let tapgesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handlemylist))
        let taprecomendation: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handlerecomendation))
        let tappurchase: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handlepurchaseReport))
        tapgesture.numberOfTapsRequired = 1
        tapgesture.numberOfTouchesRequired = 1
        mylistlbl.addGestureRecognizer(tapgesture)
        taprecomendation.numberOfTapsRequired = 1
        taprecomendation.numberOfTouchesRequired = 1
        recomendationlbl.addGestureRecognizer(taprecomendation)
        tappurchase.numberOfTapsRequired = 1
        tappurchase.numberOfTouchesRequired = 1
        purchaseReportlbl.addGestureRecognizer(tappurchase)
        
    }
    
    
    lazy var profilebgView: UIButton = {
        let view = UIButton()
        view.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).cgColor
        view.layer.borderWidth = 0.6
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(handleprofile), for: .touchUpInside)
        return view
    }()
    
    func handleprofile(){
        
        let new =  profileVC()
        self.navigationController?.pushViewController(new, animated: true)
    }
    let profileImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myaccount")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let profilelbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Profile"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let profileImgarrow: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "arrow")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    
    
    
    
    let  mylistbgView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1).cgColor
        view.layer.borderWidth = 0.6
        view.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
   
    
    func handlemylist(recognizer: UITapGestureRecognizer){
        let new = mylistVC()
        self.navigationController?.pushViewController(new, animated: true)
        
    }
    let mylistImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myaccount")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mylistlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "My list"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.isUserInteractionEnabled = true
        return lbl
    }()
    
   
    
    let mylistImgarrow: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "arrow")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let mylistseperatorView: UIView = {
        let view = UIView()
        view.backgroundColor =   UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    let recomendationImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myaccount")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var recomendationlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Recomendation"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.isUserInteractionEnabled = true
        return lbl
    }()
    
    
    func handlerecomendation(recognizer: UITapGestureRecognizer){
        let new = recomendationVC()
        self.navigationController?.pushViewController(new, animated: true)
        
    }
    
    let recomendationImgarrow: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "arrow")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let recomendationseperatorView: UIView = {
        let view = UIView()
        view.backgroundColor =   UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    
    
    let notificationImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myaccount")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let notificationlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Notification"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let notificationImgarrow: UISwitch = {
        let view = UISwitch()
        view.isOn = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let notificationseperatorView: UIView = {
        let view = UIView()
        view.backgroundColor =   UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    let purchaseReportImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "myaccount")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var  purchaseReportlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Purchase report"
        lbl.isUserInteractionEnabled = true
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    func handlepurchaseReport(recognizer: UITapGestureRecognizer){
        let new = purchaseReportVC()
        self.navigationController?.pushViewController(new, animated: true)
        
    }
    
    let purchaseReportImgarrow: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "arrow")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let purchaseReportseperatorView: UIView = {
        let view = UIView()
        view.backgroundColor =   UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    
    lazy var logoutbtnbgView: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor =  UIColor(red: 1, green: 1 , blue: 1, alpha: 1)
        view.layer.cornerRadius = 30
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.shadowOpacity = 0.6
        view.layer.shadowRadius = 0.0
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(self, action: #selector(handlelogout), for: .touchUpInside)
        return view
    }()
    
    func handlelogout(){
        
        let new = UINavigationController(rootViewController: LoginVC())
        self.present(new, animated: true, completion: nil)
    }
    
    let logoutbtnlbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Logout"
        lbl.font = UIFont(name: "AvenirNext-Bold", size: 28)
        lbl.textAlignment = .center
        lbl.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let logoutbtnImg: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "logout")
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    
    func loadViewSetup(){
        
        profilebgView.topAnchor.constraint(equalTo: view.topAnchor,constant: 25).isActive = true
        profilebgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profilebgView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        profilebgView.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        profileImg.leftAnchor.constraint(equalTo: profilebgView.leftAnchor,constant: 12).isActive = true
        profileImg.centerYAnchor.constraint(equalTo: profilebgView.centerYAnchor).isActive = true
        profileImg.widthAnchor.constraint(equalToConstant: 32).isActive = true
        profileImg.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        profilelbl.leftAnchor.constraint(equalTo: profileImg.rightAnchor,constant: 25).isActive = true
        profilelbl.centerYAnchor.constraint(equalTo: profilebgView.centerYAnchor).isActive = true
        profilelbl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        profilelbl.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        profileImgarrow.rightAnchor.constraint(equalTo: profilebgView.rightAnchor,constant: -16).isActive = true
        profileImgarrow.centerYAnchor.constraint(equalTo: profilebgView.centerYAnchor).isActive = true
        profileImgarrow.widthAnchor.constraint(equalToConstant: 22).isActive = true
        profileImgarrow.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        
        
        
        mylistbgView.topAnchor.constraint(equalTo: profilebgView.bottomAnchor,constant: 15).isActive = true
        mylistbgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mylistbgView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mylistbgView.heightAnchor.constraint(equalToConstant: 210).isActive = true
        
        
        mylistImg.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor,constant: 12).isActive = true
        mylistImg.topAnchor.constraint(equalTo: mylistbgView.topAnchor,constant: 12).isActive = true
        mylistImg.widthAnchor.constraint(equalToConstant: 32).isActive = true
        mylistImg.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        mylistlbl.leftAnchor.constraint(equalTo: mylistImg.rightAnchor,constant: 25).isActive = true
        mylistlbl.topAnchor.constraint(equalTo: mylistbgView.topAnchor,constant: 12).isActive = true
        mylistlbl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mylistlbl.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        mylistImgarrow.rightAnchor.constraint(equalTo: mylistbgView.rightAnchor,constant: -16).isActive = true
        mylistImgarrow.topAnchor.constraint(equalTo: mylistbgView.topAnchor,constant: 12).isActive = true
        mylistImgarrow.widthAnchor.constraint(equalToConstant: 22).isActive = true
        mylistImgarrow.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        mylistseperatorView.topAnchor.constraint(equalTo: mylistlbl.bottomAnchor,constant: 8).isActive = true
        mylistseperatorView.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor, constant:56).isActive = true
        mylistseperatorView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        mylistseperatorView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
        
        
        
        recomendationImg.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor,constant: 12).isActive = true
        recomendationImg.topAnchor.constraint(equalTo: mylistseperatorView.topAnchor,constant: 12).isActive = true
        recomendationImg.widthAnchor.constraint(equalToConstant: 32).isActive = true
        recomendationImg.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        recomendationlbl.leftAnchor.constraint(equalTo: recomendationImg.rightAnchor,constant: 25).isActive = true
        recomendationlbl.topAnchor.constraint(equalTo: mylistseperatorView.topAnchor,constant: 12).isActive = true
        recomendationlbl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        recomendationlbl.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        recomendationImgarrow.rightAnchor.constraint(equalTo: mylistbgView.rightAnchor,constant: -16).isActive = true
        recomendationImgarrow.topAnchor.constraint(equalTo: mylistseperatorView.topAnchor,constant: 12).isActive = true
        recomendationImgarrow.widthAnchor.constraint(equalToConstant: 22).isActive = true
        recomendationImgarrow.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        recomendationseperatorView.topAnchor.constraint(equalTo: recomendationlbl.bottomAnchor,constant: 8).isActive = true
        recomendationseperatorView.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor, constant:56).isActive = true
        recomendationseperatorView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        recomendationseperatorView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
        
        
        notificationImg.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor,constant: 12).isActive = true
        notificationImg.topAnchor.constraint(equalTo: recomendationseperatorView.topAnchor,constant: 12).isActive = true
        notificationImg.widthAnchor.constraint(equalToConstant: 32).isActive = true
        notificationImg.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        notificationlbl.leftAnchor.constraint(equalTo: notificationImg.rightAnchor,constant: 25).isActive = true
        notificationlbl.topAnchor.constraint(equalTo: recomendationseperatorView.topAnchor,constant: 12).isActive = true
        notificationlbl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        notificationlbl.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        notificationImgarrow.rightAnchor.constraint(equalTo: mylistbgView.rightAnchor,constant: -46).isActive = true
        notificationImgarrow.topAnchor.constraint(equalTo: recomendationseperatorView.topAnchor,constant: 12).isActive = true
        notificationImgarrow.widthAnchor.constraint(equalToConstant: 22).isActive = true
        notificationImgarrow.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        notificationseperatorView.topAnchor.constraint(equalTo: notificationlbl.bottomAnchor,constant: 8).isActive = true
        notificationseperatorView.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor, constant:56).isActive = true
        notificationseperatorView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        notificationseperatorView.heightAnchor.constraint(equalToConstant: 1.4).isActive = true
        
        
        
        
        
        purchaseReportImg.leftAnchor.constraint(equalTo: mylistbgView.leftAnchor,constant: 12).isActive = true
        purchaseReportImg.topAnchor.constraint(equalTo: notificationseperatorView.topAnchor,constant: 12).isActive = true
        purchaseReportImg.widthAnchor.constraint(equalToConstant: 32).isActive = true
        purchaseReportImg.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        purchaseReportlbl.leftAnchor.constraint(equalTo: purchaseReportImg.rightAnchor,constant: 25).isActive = true
        purchaseReportlbl.topAnchor.constraint(equalTo: notificationseperatorView.topAnchor,constant: 12).isActive = true
        purchaseReportlbl.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        purchaseReportlbl.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        
        purchaseReportImgarrow.rightAnchor.constraint(equalTo: mylistbgView.rightAnchor,constant: -16).isActive = true
        purchaseReportImgarrow.topAnchor.constraint(equalTo: notificationseperatorView.topAnchor,constant: 12).isActive = true
        purchaseReportImgarrow.widthAnchor.constraint(equalToConstant: 22).isActive = true
        purchaseReportImgarrow.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        
        
        logoutbtnbgView.topAnchor.constraint(equalTo: mylistbgView.bottomAnchor,constant: 32).isActive = true
        logoutbtnbgView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoutbtnbgView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -75).isActive = true
        logoutbtnbgView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        
        
        logoutbtnlbl.centerXAnchor.constraint(equalTo: logoutbtnbgView.centerXAnchor, constant: 10).isActive = true
        logoutbtnlbl.centerYAnchor.constraint(equalTo: logoutbtnbgView.centerYAnchor).isActive = true
        logoutbtnlbl.widthAnchor.constraint(equalTo: logoutbtnlbl.widthAnchor).isActive = true
        logoutbtnlbl.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
        
        
        logoutbtnImg.rightAnchor.constraint(equalTo: logoutbtnlbl.leftAnchor,constant: -13).isActive = true
        logoutbtnImg.centerYAnchor.constraint(equalTo: logoutbtnbgView.centerYAnchor).isActive = true
        logoutbtnImg.widthAnchor.constraint(equalToConstant: 28).isActive = true
        logoutbtnImg.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        
        
        
    }
    
    
}




extension accountVC {
    
    func setupNavigation(){
        navigationItem.title = "Account"
        
    }
    
    
    
}
