//
//  keyInsightsCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class keyInsightsCell: UICollectionViewCell, UIScrollViewDelegate {
    
    
    let bgconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupbgconatinerView(){
        addSubview(bgconatinerView)
        bgconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        bgconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        bgconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        bgconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
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
    
    
    let KeyInsightssconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupKeyInsightssconatinerView(){
        scrollview.addSubview(KeyInsightssconatinerView)
        KeyInsightssconatinerView.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        KeyInsightssconatinerView.centerYAnchor.constraint(equalTo: scrollview.centerYAnchor).isActive = true
        KeyInsightssconatinerView.widthAnchor.constraint(equalTo: scrollview.widthAnchor).isActive = true
        KeyInsightssconatinerView.heightAnchor.constraint(equalTo: scrollview.heightAnchor).isActive = true
        
    }
    
    
    let locatiobtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Location", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 78/255, green: 95/255, blue: 47/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.handleKIlocation), for: .touchUpInside)
        return btn
    }()
    
    func setuplocatiobtn(){
        addSubview(locatiobtn)
        locatiobtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        locatiobtn.topAnchor.constraint(equalTo: KeyInsightssconatinerView.topAnchor, constant: 55).isActive = true
        locatiobtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        locatiobtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    
    let buildQualitybtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Build Quality", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 113/255, green: 70/255, blue: 89/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.handleKIbuildquality), for: .touchUpInside)
        return btn
    }()
    
    func setupbuildQualitybtn(){
        addSubview(buildQualitybtn)
        buildQualitybtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        buildQualitybtn.topAnchor.constraint(equalTo: locatiobtn.bottomAnchor, constant: 20).isActive = true
        buildQualitybtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        buildQualitybtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let valueformoneybtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Value for money", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 35/255, green: 65/255, blue: 94/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.handleKIvalueformoney), for: .touchUpInside)
        return btn
    }()
    
    func setupvalueformoneybtn(){
        addSubview(valueformoneybtn)
        valueformoneybtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        valueformoneybtn.topAnchor.constraint(equalTo: buildQualitybtn.bottomAnchor, constant: 20).isActive = true
        valueformoneybtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        valueformoneybtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let interiorbtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Interior", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 101/255, green: 36/255, blue: 36/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.hanldeKIinterior), for: .touchUpInside)
        return btn
    }()
    
    func setupinteriorbtn(){
        addSubview(interiorbtn)
        interiorbtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        interiorbtn.topAnchor.constraint(equalTo: valueformoneybtn.bottomAnchor, constant: 20).isActive = true
        interiorbtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        interiorbtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let smartbtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Smart", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 27/255, green: 89/255, blue: 102/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.handleKIsmart), for: .touchUpInside)
        return btn
    }()
    
    func setupsmartbtn(){
        addSubview(smartbtn)
        smartbtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        smartbtn.topAnchor.constraint(equalTo: interiorbtn.bottomAnchor, constant: 20).isActive = true
        smartbtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        smartbtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let qualityoflifebtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Quality of life", for: .normal)
        btn.titleLabel?.font = UIFont(name: "AvenirNext-Medium", size: 26)
        btn.backgroundColor = UIColor(red: 108/255, green: 70/255, blue: 41/255, alpha: 1)
        btn.layer.cornerRadius = 23
        btn.layer.masksToBounds = true
        btn.addTarget(self, action: #selector(housingDetailVC.hanldeKIqualityoflife), for: .touchUpInside)
        return btn
    }()
    
    func setupqualityoflifebtn(){
        addSubview(qualityoflifebtn)
        qualityoflifebtn.centerXAnchor.constraint(equalTo: KeyInsightssconatinerView.centerXAnchor).isActive = true
        qualityoflifebtn.topAnchor.constraint(equalTo: smartbtn.bottomAnchor, constant: 20).isActive = true
        qualityoflifebtn.widthAnchor.constraint(equalTo: KeyInsightssconatinerView.widthAnchor, constant: -35).isActive = true
        qualityoflifebtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    override init(frame: CGRect){
        
        super.init(frame: frame)
        scrollview.contentOffset = CGPoint(x: 0, y: 0)
        scrollview.contentSize = CGSize(width: KeyInsightssconatinerView.bounds.width, height: 400)
        
        setupbgconatinerView()
        setupscrollview()
        setupKeyInsightssconatinerView()
        setuplocatiobtn()
        setupbuildQualitybtn()
        setupvalueformoneybtn()
        setupinteriorbtn()
        setupsmartbtn()
        setupqualityoflifebtn()
        
    }
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

