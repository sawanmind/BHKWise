//
//  ratingSnapshotCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class ratingSnapshotCell: UICollectionViewCell , UIScrollViewDelegate{
    
    
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
    
    
    
    
    let RatingSnapshotsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupRatingSnapshotsconatinerView(){
        scrollview.addSubview(RatingSnapshotsconatinerView)
        RatingSnapshotsconatinerView.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        RatingSnapshotsconatinerView.centerYAnchor.constraint(equalTo: scrollview.centerYAnchor).isActive = true
        RatingSnapshotsconatinerView.widthAnchor.constraint(equalTo: scrollview.widthAnchor).isActive = true
        RatingSnapshotsconatinerView.heightAnchor.constraint(equalTo: scrollview.heightAnchor).isActive = true
        
    }
    
    
    let dotView1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 11
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 13/255, alpha: 1)
        return view
    }()
    
    func setupdotView1(){
        addSubview(dotView1)
        dotView1.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        dotView1.leftAnchor.constraint(equalTo:RatingSnapshotsconatinerView.leftAnchor,constant:14).isActive = true
        dotView1.widthAnchor.constraint(equalToConstant: 22).isActive = true
        dotView1.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    
    let dotView2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 11
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 13/255, alpha: 1)
        return view
    }()
    
    func setupdotView2(){
        addSubview(dotView2)
        dotView2.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        dotView2.leftAnchor.constraint(equalTo:dotView1.rightAnchor,constant:8).isActive = true
        dotView2.widthAnchor.constraint(equalToConstant: 22).isActive = true
        dotView2.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    let dotView3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 11
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 13/255, alpha: 1)
        return view
    }()
    
    func setupdotView3(){
        addSubview(dotView3)
        dotView3.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        dotView3.leftAnchor.constraint(equalTo:dotView2.rightAnchor,constant:8).isActive = true
        dotView3.widthAnchor.constraint(equalToConstant: 22).isActive = true
        dotView3.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    let dotView4: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 11
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 13/255, alpha: 1)
        return view
    }()
    
    func setupdotView4(){
        addSubview(dotView4)
        dotView4.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        dotView4.leftAnchor.constraint(equalTo:dotView3.rightAnchor,constant:8).isActive = true
        dotView4.widthAnchor.constraint(equalToConstant: 22).isActive = true
        dotView4.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    let dotView5: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 11
        view.layer.masksToBounds = true
        view.backgroundColor = UIColor(red: 255/255, green: 248/255, blue: 13/255, alpha: 1)
        return view
    }()
    
    func setupdotView5(){
        addSubview(dotView5)
        dotView5.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        dotView5.leftAnchor.constraint(equalTo:dotView4.rightAnchor,constant:8).isActive = true
        dotView5.widthAnchor.constraint(equalToConstant: 22).isActive = true
        dotView5.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    
    
    
    let localityLblBelowDot: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "#1 of 295 in Gurugram"
        lbl.font = UIFont(name: "SF NS Display", size: 18)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setuplocalityLblBelowDot(){
        
        addSubview(localityLblBelowDot)
        localityLblBelowDot.topAnchor.constraint(equalTo:dotView1.bottomAnchor,constant:10).isActive = true
        localityLblBelowDot.leftAnchor.constraint(equalTo:RatingSnapshotsconatinerView.leftAnchor,constant:14).isActive = true
        localityLblBelowDot.widthAnchor.constraint(equalTo: localityLblBelowDot.widthAnchor).isActive = true
        localityLblBelowDot.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    
    let currentStatus: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Up"
        lbl.font = UIFont(name: "SF NS Display", size: 28)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupcurrentStatus(){
        
        addSubview(currentStatus)
        currentStatus.topAnchor.constraint(equalTo:RatingSnapshotsconatinerView.topAnchor,constant:65).isActive = true
        currentStatus.rightAnchor.constraint(equalTo:RatingSnapshotsconatinerView.rightAnchor,constant: -48).isActive = true
        currentStatus.widthAnchor.constraint(equalTo: currentStatus.widthAnchor).isActive = true
        currentStatus.heightAnchor.constraint(equalToConstant: 29).isActive = true
    }
    
    let currentStatusImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupcurrentStatusImg(){
        addSubview(currentStatusImg)
        currentStatusImg.rightAnchor.constraint(equalTo: currentStatus.leftAnchor, constant: -15).isActive = true
        currentStatusImg.topAnchor.constraint(equalTo: RatingSnapshotsconatinerView.topAnchor, constant: 65).isActive = true
        currentStatusImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        currentStatusImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let statusLblBelowtriangle: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Status in Locality"
        lbl.font = UIFont(name: "SF NS Display", size: 18)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupstatusLblBelowtriangle(){
        
        addSubview(statusLblBelowtriangle)
        statusLblBelowtriangle.topAnchor.constraint(equalTo:currentStatusImg.bottomAnchor,constant:10).isActive = true
        statusLblBelowtriangle.rightAnchor.constraint(equalTo:RatingSnapshotsconatinerView.rightAnchor,constant:-14).isActive = true
        statusLblBelowtriangle.widthAnchor.constraint(equalTo: statusLblBelowtriangle.widthAnchor).isActive = true
        statusLblBelowtriangle.heightAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    let progressring: KDCircularProgress = {
        
        let progress = KDCircularProgress(frame: CGRect(x: 100, y: 150, width: 175, height: 175))
        progress.startAngle = -90
        progress.progressThickness = 0.2
        progress.trackThickness = 0.2
        progress.trackColor = UIColor.navigationColor
        progress.clockwise = true
        progress.roundedCorners = true
        progress.set(colors: UIColor.yellow )
        return progress
    }()
    
    
    func setupprogressring(){
        
        RatingSnapshotsconatinerView.addSubview(progressring)
        progressring.animate(toAngle: 300, duration: 1.5, completion: nil)
        
    }
    
    let percentvaluelbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.boldSystemFont(ofSize: 35)
        lbl.text = "75\("%")"
        lbl.textAlignment = .center
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuppercentvaluelbl(){
        progressring.addSubview(percentvaluelbl)
        percentvaluelbl.centerXAnchor.constraint(equalTo: progressring.centerXAnchor).isActive = true
        percentvaluelbl.centerYAnchor.constraint(equalTo: progressring.centerYAnchor).isActive = true
        percentvaluelbl.widthAnchor.constraint(equalToConstant: 75).isActive = true
        percentvaluelbl.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
    }
    
    
    let bhkwiseratinglbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 10)
        lbl.text = "BHK Wise Rating"
        lbl.textAlignment = .center
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupbhkwiseratinglbl(){
        progressring.addSubview(bhkwiseratinglbl)
        bhkwiseratinglbl.centerXAnchor.constraint(equalTo: progressring.centerXAnchor).isActive = true
        bhkwiseratinglbl.centerYAnchor.constraint(equalTo: progressring.centerYAnchor,constant: 25).isActive = true
        bhkwiseratinglbl.widthAnchor.constraint(equalToConstant: 150).isActive = true
        bhkwiseratinglbl.heightAnchor.constraint(equalToConstant: 18).isActive = true
        
    }
    
    
    let locationpercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "63.2"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuplocationpercentlbl(){
        locatioBGview.addSubview(locationpercentlbl)
        locationpercentlbl.leftAnchor.constraint(equalTo: locatioBGview.leftAnchor).isActive = true
        locationpercentlbl.topAnchor.constraint(equalTo: locatioBGview.topAnchor).isActive = true
        locationpercentlbl.widthAnchor.constraint(equalTo: locationpercentlbl.widthAnchor).isActive = true
        locationpercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let locationpercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuplocationpercent(){
        locatioBGview.addSubview(locationpercent)
        locationpercent.leftAnchor.constraint(equalTo: locationpercentlbl.rightAnchor,constant: 2).isActive = true
        locationpercent.bottomAnchor.constraint(equalTo: locationpercentlbl.bottomAnchor,constant: -5).isActive = true
        locationpercent.widthAnchor.constraint(equalTo: locationpercent.widthAnchor).isActive = true
        locationpercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let locationlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Location"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuplocationlbl(){
        locatioBGview.addSubview(locationlbl)
        locationlbl.leftAnchor.constraint(equalTo: locatioBGview.leftAnchor).isActive = true
        locationlbl.topAnchor.constraint(equalTo: locationpercentlbl.bottomAnchor).isActive = true
        locationlbl.widthAnchor.constraint(equalTo: locationlbl.widthAnchor).isActive = true
        locationlbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let locationprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.63,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setuplocationprogressView(){
        locatioBGview.addSubview(locationprogressView)
        locationprogressView.leftAnchor.constraint(equalTo: locatioBGview.leftAnchor).isActive = true
        locationprogressView.topAnchor.constraint(equalTo: locationlbl.bottomAnchor,constant: 7).isActive = true
        locationprogressView.widthAnchor.constraint(equalTo: locatioBGview.widthAnchor).isActive = true
        locationprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    let locatioBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setuplocatioBGview(){
        setuplocationpercentlbl()
        setuplocationpercent()
        setuplocationlbl()
        setuplocationprogressView()
        RatingSnapshotsconatinerView.addSubview(locatioBGview)
        locatioBGview.topAnchor.constraint(equalTo:progressring.bottomAnchor,constant:65).isActive = true
        locatioBGview.leftAnchor.constraint(equalTo:RatingSnapshotsconatinerView.leftAnchor,constant: 15).isActive = true
        locatioBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        locatioBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    
    let buildqualitypercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "65.2"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupbuildqualitypercentlbl(){
        buildqualityBGview.addSubview(buildqualitypercentlbl)
        buildqualitypercentlbl.leftAnchor.constraint(equalTo: buildqualityBGview.leftAnchor).isActive = true
        buildqualitypercentlbl.topAnchor.constraint(equalTo: buildqualityBGview.topAnchor).isActive = true
        buildqualitypercentlbl.widthAnchor.constraint(equalTo: buildqualitypercentlbl.widthAnchor).isActive = true
        buildqualitypercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let buildqualitypercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupbuildqualitypercent(){
        buildqualityBGview.addSubview(buildqualitypercent)
        buildqualitypercent.leftAnchor.constraint(equalTo: buildqualitypercentlbl.rightAnchor,constant: 2).isActive = true
        buildqualitypercent.bottomAnchor.constraint(equalTo: buildqualitypercentlbl.bottomAnchor,constant: -5).isActive = true
        buildqualitypercent.widthAnchor.constraint(equalTo: buildqualitypercent.widthAnchor).isActive = true
        buildqualitypercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let buildqualitylbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Build Quality"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupbuildqualitylbl(){
        buildqualityBGview.addSubview(buildqualitylbl)
        buildqualitylbl.leftAnchor.constraint(equalTo: buildqualityBGview.leftAnchor).isActive = true
        buildqualitylbl.topAnchor.constraint(equalTo: buildqualitypercentlbl.bottomAnchor).isActive = true
        buildqualitylbl.widthAnchor.constraint(equalTo: buildqualitylbl.widthAnchor).isActive = true
        buildqualitylbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let buildqualityprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.652,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setupbuildqualityprogressView(){
        buildqualityBGview.addSubview(buildqualityprogressView)
        buildqualityprogressView.leftAnchor.constraint(equalTo: buildqualityBGview.leftAnchor).isActive = true
        buildqualityprogressView.topAnchor.constraint(equalTo: buildqualitylbl.bottomAnchor,constant: 7).isActive = true
        buildqualityprogressView.widthAnchor.constraint(equalTo: buildqualityBGview.widthAnchor).isActive = true
        buildqualityprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    let buildqualityBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setupbuildqualityBGview(){
        setupbuildqualitypercentlbl()
        setupbuildqualitypercent()
        setupbuildqualitylbl()
        setupbuildqualityprogressView()
        RatingSnapshotsconatinerView.addSubview(buildqualityBGview)
        buildqualityBGview.topAnchor.constraint(equalTo:progressring.bottomAnchor,constant:65).isActive = true
        buildqualityBGview.rightAnchor.constraint(equalTo:RatingSnapshotsconatinerView.rightAnchor,constant: -15).isActive = true
        buildqualityBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        buildqualityBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    let valueformoneypercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "46.7"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupvalueformoneypercentlbl(){
        valueformoneyBGview.addSubview(valueformoneypercentlbl)
        valueformoneypercentlbl.leftAnchor.constraint(equalTo: valueformoneyBGview.leftAnchor).isActive = true
        valueformoneypercentlbl.topAnchor.constraint(equalTo: valueformoneyBGview.topAnchor).isActive = true
        valueformoneypercentlbl.widthAnchor.constraint(equalTo: valueformoneypercentlbl.widthAnchor).isActive = true
        valueformoneypercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let valueformoneypercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupvalueformoneypercent(){
        valueformoneyBGview.addSubview(valueformoneypercent)
        valueformoneypercent.leftAnchor.constraint(equalTo: valueformoneypercentlbl.rightAnchor,constant: 2).isActive = true
        valueformoneypercent.bottomAnchor.constraint(equalTo: valueformoneypercentlbl.bottomAnchor,constant: -5).isActive = true
        valueformoneypercent.widthAnchor.constraint(equalTo: valueformoneypercent.widthAnchor).isActive = true
        valueformoneypercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let valueformoneylbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Value for money"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupvalueformoneylbl(){
        valueformoneyBGview.addSubview(valueformoneylbl)
        valueformoneylbl.leftAnchor.constraint(equalTo: valueformoneyBGview.leftAnchor).isActive = true
        valueformoneylbl.topAnchor.constraint(equalTo: valueformoneypercentlbl.bottomAnchor).isActive = true
        valueformoneylbl.widthAnchor.constraint(equalTo: valueformoneylbl.widthAnchor).isActive = true
        valueformoneylbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let valueformoneyprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.467,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setupvalueformoneyprogressView(){
        valueformoneyBGview.addSubview(valueformoneyprogressView)
        valueformoneyprogressView.leftAnchor.constraint(equalTo: valueformoneyBGview.leftAnchor).isActive = true
        valueformoneyprogressView.topAnchor.constraint(equalTo: valueformoneylbl.bottomAnchor,constant: 7).isActive = true
        valueformoneyprogressView.widthAnchor.constraint(equalTo: valueformoneyBGview.widthAnchor).isActive = true
        valueformoneyprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    
    let valueformoneyBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setupvalueformoneyBGview(){
        setupvalueformoneypercentlbl()
        setupvalueformoneypercent()
        setupvalueformoneylbl()
        setupvalueformoneyprogressView()
        RatingSnapshotsconatinerView.addSubview(valueformoneyBGview)
        valueformoneyBGview.topAnchor.constraint(equalTo:locatioBGview.bottomAnchor,constant:35).isActive = true
        valueformoneyBGview.leftAnchor.constraint(equalTo:RatingSnapshotsconatinerView.leftAnchor,constant: 15).isActive = true
        valueformoneyBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        valueformoneyBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    let interiorpercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "65.2"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupinteriorpercentlbl(){
        interiorBGview.addSubview(interiorpercentlbl)
        interiorpercentlbl.leftAnchor.constraint(equalTo: interiorBGview.leftAnchor).isActive = true
        interiorpercentlbl.topAnchor.constraint(equalTo: interiorBGview.topAnchor).isActive = true
        interiorpercentlbl.widthAnchor.constraint(equalTo: interiorpercentlbl.widthAnchor).isActive = true
        interiorpercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let interiorpercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupinteriorpercent(){
        interiorBGview.addSubview(interiorpercent)
        interiorpercent.leftAnchor.constraint(equalTo: interiorpercentlbl.rightAnchor,constant: 2).isActive = true
        interiorpercent.bottomAnchor.constraint(equalTo: interiorpercentlbl.bottomAnchor,constant: -5).isActive = true
        interiorpercent.widthAnchor.constraint(equalTo: interiorpercent.widthAnchor).isActive = true
        interiorpercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let interiorlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Interior"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupinteriorlbl(){
        interiorBGview.addSubview(interiorlbl)
        interiorlbl.leftAnchor.constraint(equalTo: interiorBGview.leftAnchor).isActive = true
        interiorlbl.topAnchor.constraint(equalTo: interiorpercentlbl.bottomAnchor).isActive = true
        interiorlbl.widthAnchor.constraint(equalTo: interiorlbl.widthAnchor).isActive = true
        interiorlbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let interiorprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.652,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setupinteriorprogressView(){
        interiorBGview.addSubview(interiorprogressView)
        interiorprogressView.leftAnchor.constraint(equalTo: interiorBGview.leftAnchor).isActive = true
        interiorprogressView.topAnchor.constraint(equalTo: interiorlbl.bottomAnchor,constant: 7).isActive = true
        interiorprogressView.widthAnchor.constraint(equalTo: interiorBGview.widthAnchor).isActive = true
        interiorprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    
    
    let interiorBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setupinteriorBGview(){
        setupinteriorpercentlbl()
        setupinteriorpercent()
        setupinteriorlbl()
        setupinteriorprogressView()
        
        RatingSnapshotsconatinerView.addSubview(interiorBGview)
        interiorBGview.topAnchor.constraint(equalTo:buildqualityBGview.bottomAnchor,constant:35).isActive = true
        interiorBGview.rightAnchor.constraint(equalTo:RatingSnapshotsconatinerView.rightAnchor,constant: -15).isActive = true
        interiorBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        interiorBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    let smartpercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "65.2"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupsmartpercentlbl(){
        smartBGview.addSubview(smartpercentlbl)
        smartpercentlbl.leftAnchor.constraint(equalTo: smartBGview.leftAnchor).isActive = true
        smartpercentlbl.topAnchor.constraint(equalTo: smartBGview.topAnchor).isActive = true
        smartpercentlbl.widthAnchor.constraint(equalTo: smartpercentlbl.widthAnchor).isActive = true
        smartpercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let smartpercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupsmartpercent(){
        smartBGview.addSubview(smartpercent)
        smartpercent.leftAnchor.constraint(equalTo: smartpercentlbl.rightAnchor,constant: 2).isActive = true
        smartpercent.bottomAnchor.constraint(equalTo: smartpercentlbl.bottomAnchor,constant: -5).isActive = true
        smartpercent.widthAnchor.constraint(equalTo: smartpercent.widthAnchor).isActive = true
        smartpercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let smartlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Smart"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupsmartlbl(){
        smartBGview.addSubview(smartlbl)
        smartlbl.leftAnchor.constraint(equalTo: smartBGview.leftAnchor).isActive = true
        smartlbl.topAnchor.constraint(equalTo: smartpercentlbl.bottomAnchor).isActive = true
        smartlbl.widthAnchor.constraint(equalTo: smartlbl.widthAnchor).isActive = true
        smartlbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let smartprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.652,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setupsmartprogressView(){
        smartBGview.addSubview(smartprogressView)
        smartprogressView.leftAnchor.constraint(equalTo: smartBGview.leftAnchor).isActive = true
        smartprogressView.topAnchor.constraint(equalTo: smartlbl.bottomAnchor,constant: 7).isActive = true
        smartprogressView.widthAnchor.constraint(equalTo: smartBGview.widthAnchor).isActive = true
        smartprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    
    
    
    let smartBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setupsmartBGview(){
        setupsmartpercentlbl()
        setupsmartpercent()
        setupsmartlbl()
        setupsmartprogressView()
        RatingSnapshotsconatinerView.addSubview(smartBGview)
        smartBGview.topAnchor.constraint(equalTo:valueformoneyBGview.bottomAnchor,constant:35).isActive = true
        smartBGview.leftAnchor.constraint(equalTo:RatingSnapshotsconatinerView.leftAnchor,constant: 15).isActive = true
        smartBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        smartBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    
    let qualityoflifepercentlbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 35)
        lbl.text = "65.2"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupqualityoflifepercentlbl(){
        qualityoflifeBGview.addSubview(qualityoflifepercentlbl)
        qualityoflifepercentlbl.leftAnchor.constraint(equalTo: qualityoflifeBGview.leftAnchor).isActive = true
        qualityoflifepercentlbl.topAnchor.constraint(equalTo: qualityoflifeBGview.topAnchor).isActive = true
        qualityoflifepercentlbl.widthAnchor.constraint(equalTo: qualityoflifepercentlbl.widthAnchor).isActive = true
        qualityoflifepercentlbl.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
    let qualityoflifepercent: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "%"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupqualityoflifepercent(){
        qualityoflifeBGview.addSubview(qualityoflifepercent)
        qualityoflifepercent.leftAnchor.constraint(equalTo: qualityoflifepercentlbl.rightAnchor,constant: 2).isActive = true
        qualityoflifepercent.bottomAnchor.constraint(equalTo: qualityoflifepercentlbl.bottomAnchor,constant: -5).isActive = true
        qualityoflifepercent.widthAnchor.constraint(equalTo: qualityoflifepercent.widthAnchor).isActive = true
        qualityoflifepercent.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    let qualityoflifelbl: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22)
        lbl.text = "Quality of life"
        lbl.textAlignment = .left
        lbl.textColor = UIColor.white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupqualityoflifelbl(){
        qualityoflifeBGview.addSubview(qualityoflifelbl)
        qualityoflifelbl.leftAnchor.constraint(equalTo: qualityoflifeBGview.leftAnchor).isActive = true
        qualityoflifelbl.topAnchor.constraint(equalTo: qualityoflifepercentlbl.bottomAnchor).isActive = true
        qualityoflifelbl.widthAnchor.constraint(equalTo: qualityoflifelbl.widthAnchor).isActive = true
        qualityoflifelbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
    }
    
    
    let qualityoflifeprogressView: UIProgressView = {
        
        let progressView = UIProgressView(progressViewStyle:UIProgressViewStyle.default)
        progressView.progress = 0.0005
        progressView.setProgress(0.652,animated:true)
        progressView.progressTintColor = UIColor.yellow
        progressView.trackTintColor = UIColor.gray
        progressView.layer.cornerRadius = 6
        progressView.layer.masksToBounds = true
        progressView.translatesAutoresizingMaskIntoConstraints = false
        return progressView
    }()
    
    func setupqualityoflifeprogressView(){
        qualityoflifeBGview.addSubview(qualityoflifeprogressView)
        qualityoflifeprogressView.leftAnchor.constraint(equalTo: qualityoflifeBGview.leftAnchor).isActive = true
        qualityoflifeprogressView.topAnchor.constraint(equalTo: qualityoflifelbl.bottomAnchor,constant: 7).isActive = true
        qualityoflifeprogressView.widthAnchor.constraint(equalTo: qualityoflifeBGview.widthAnchor).isActive = true
        qualityoflifeprogressView.heightAnchor.constraint(equalToConstant: 12).isActive = true
        
    }
    
    
    
    
    let qualityoflifeBGview: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.navigationColor
        return view
    }()
    
    func setupqualityoflifeBGview(){
        setupqualityoflifepercentlbl()
        setupqualityoflifepercent()
        setupqualityoflifelbl()
        setupqualityoflifeprogressView()
        RatingSnapshotsconatinerView.addSubview(qualityoflifeBGview)
        qualityoflifeBGview.topAnchor.constraint(equalTo:interiorBGview.bottomAnchor,constant:35).isActive = true
        qualityoflifeBGview.rightAnchor.constraint(equalTo:RatingSnapshotsconatinerView.rightAnchor,constant: -15).isActive = true
        qualityoflifeBGview.widthAnchor.constraint(equalTo: RatingSnapshotsconatinerView.widthAnchor, multiplier: 1/2, constant: -30).isActive = true
        qualityoflifeBGview.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    
    
    
    
    
    let greenlblImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupgreenlblImg(){
        RatingSnapshotsconatinerView.addSubview(greenlblImg)
        greenlblImg.leftAnchor.constraint(equalTo: RatingSnapshotsconatinerView.leftAnchor, constant: 15).isActive = true
        greenlblImg.topAnchor.constraint(equalTo: smartBGview.bottomAnchor, constant: 60).isActive = true
        greenlblImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        greenlblImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let greenlbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Best for interior"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupgreenlbl(){
        
        RatingSnapshotsconatinerView.addSubview(greenlbl)
        greenlbl.topAnchor.constraint(equalTo:smartBGview.bottomAnchor,constant:60).isActive = true
        greenlbl.leftAnchor.constraint(equalTo:greenlblImg.rightAnchor,constant: 20).isActive = true
        greenlbl.widthAnchor.constraint(equalTo: greenlbl.widthAnchor).isActive = true
        greenlbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    
    
    
    let bluelblImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupbluelblImg(){
        RatingSnapshotsconatinerView.addSubview(bluelblImg)
        bluelblImg.leftAnchor.constraint(equalTo: RatingSnapshotsconatinerView.leftAnchor, constant: 15).isActive = true
        bluelblImg.topAnchor.constraint(equalTo: greenlblImg.bottomAnchor, constant: 40).isActive = true
        bluelblImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        bluelblImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let bluelbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Average on location"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupbluelbl(){
        
        RatingSnapshotsconatinerView.addSubview(bluelbl)
        bluelbl.topAnchor.constraint(equalTo:greenlbl.bottomAnchor,constant:40).isActive = true
        bluelbl.leftAnchor.constraint(equalTo:bluelblImg.rightAnchor,constant: 20).isActive = true
        bluelbl.widthAnchor.constraint(equalTo: bluelbl.widthAnchor).isActive = true
        bluelbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    
    
    let redlblImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "redtriangle")
        return img
    }()
    
    
    func setupredlblImg(){
        RatingSnapshotsconatinerView.addSubview(redlblImg)
        redlblImg.leftAnchor.constraint(equalTo: RatingSnapshotsconatinerView.leftAnchor, constant: 15).isActive = true
        redlblImg.topAnchor.constraint(equalTo: bluelblImg.bottomAnchor, constant: 40).isActive = true
        redlblImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        redlblImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let redlbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Low on value for money"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupredlbl(){
        
        RatingSnapshotsconatinerView.addSubview(redlbl)
        redlbl.topAnchor.constraint(equalTo:bluelbl.bottomAnchor,constant:40).isActive = true
        redlbl.leftAnchor.constraint(equalTo:redlblImg.rightAnchor,constant: 20).isActive = true
        redlbl.widthAnchor.constraint(equalTo: redlbl.widthAnchor).isActive = true
        redlbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    
    
    lazy var sharebtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 23
        //  btn.addTarget(self, action: #selector(handleshare), for: .touchUpInside)
        btn.layer.masksToBounds = true
        btn.isUserInteractionEnabled = true
        return btn
    }()
    
    
    func setupsharebtn(){
        addSubview(sharebtn)
        sharebtn.leftAnchor.constraint(equalTo: RatingSnapshotsconatinerView.leftAnchor, constant: 30).isActive = true
        sharebtn.topAnchor.constraint(equalTo: redlbl.bottomAnchor,constant: 46).isActive = true
        sharebtn.widthAnchor.constraint(equalToConstant: 130).isActive = true
        sharebtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let sharelbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(red: 27/255, green: 162/255, blue: 32/255, alpha: 1)
        lbl.text = "Share"
        return lbl
    }()
    
    
    func setupsharelbl(){
        sharebtn.addSubview(sharelbl)
        sharelbl.rightAnchor.constraint(equalTo: sharebtn.rightAnchor, constant: -36).isActive = true
        sharelbl.centerYAnchor.constraint(equalTo: sharebtn.centerYAnchor).isActive = true
        sharelbl.widthAnchor.constraint(equalTo: sharelbl.widthAnchor).isActive = true
        sharelbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    let shareimg: UIImageView = {
        let lbl = UIImageView()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.image = UIImage(named: "share")
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    
    func setupshareimg(){
        sharebtn.addSubview(shareimg)
        shareimg.leftAnchor.constraint(equalTo: sharebtn.leftAnchor, constant: 20).isActive = true
        shareimg.centerYAnchor.constraint(equalTo: sharebtn.centerYAnchor).isActive = true
        shareimg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        shareimg.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
    lazy var savebtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 23
        // btn.addTarget(self, action: #selector(handleshare), for: .touchUpInside)
        btn.layer.masksToBounds = true
        btn.isUserInteractionEnabled = true
        return btn
    }()
    
    
    func setupsavebtn(){
        addSubview(savebtn)
        savebtn.rightAnchor.constraint(equalTo: RatingSnapshotsconatinerView.rightAnchor, constant: -30).isActive = true
        savebtn.topAnchor.constraint(equalTo: redlbl.bottomAnchor,constant: 46).isActive = true
        savebtn.widthAnchor.constraint(equalToConstant: 130).isActive = true
        savebtn.heightAnchor.constraint(equalToConstant: 46).isActive = true
    }
    
    let savelbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(red: 27/255, green: 162/255, blue: 32/255, alpha: 1)
        lbl.text = "Save"
        return lbl
    }()
    
    
    func setupsavelbl(){
        savebtn.addSubview(savelbl)
        savelbl.rightAnchor.constraint(equalTo: savebtn.rightAnchor, constant: -36).isActive = true
        savelbl.centerYAnchor.constraint(equalTo: savebtn.centerYAnchor).isActive = true
        savelbl.widthAnchor.constraint(equalTo: savelbl.widthAnchor).isActive = true
        savelbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    let saveimg: UIImageView = {
        let lbl = UIImageView()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.image = UIImage(named: "share")
        lbl.contentMode = .scaleAspectFit
        return lbl
    }()
    
    
    func setupsaveimg(){
        savebtn.addSubview(saveimg)
        saveimg.leftAnchor.constraint(equalTo: savebtn.leftAnchor, constant: 20).isActive = true
        saveimg.centerYAnchor.constraint(equalTo: savebtn.centerYAnchor).isActive = true
        saveimg.widthAnchor.constraint(equalToConstant: 20).isActive = true
        saveimg.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
    
    
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        
        setupscrollview()
        scrollview.contentOffset = CGPoint(x: 0, y: 0)
        scrollview.contentSize = CGSize(width: RatingSnapshotsconatinerView.bounds.width, height: 1200)
        setupbgconatinerView()
        setupRatingSnapshotsconatinerView()
        setupdotView1()
        setupdotView2()
        setupdotView3()
        setupdotView4()
        setupdotView5()
        setuplocalityLblBelowDot()
        setupcurrentStatus()
        setupcurrentStatusImg()
        setupstatusLblBelowtriangle()
        setupprogressring()
        setuppercentvaluelbl()
        setupbhkwiseratinglbl()
        setuplocatioBGview()
        setupbuildqualityBGview()
        setupvalueformoneyBGview()
        setupinteriorBGview()
        setupsmartBGview()
        setupqualityoflifeBGview()
        setupgreenlblImg()
        setupgreenlbl()
        setupbluelblImg()
        setupbluelbl()
        setupredlblImg()
        setupredlbl()
        
        setupsharebtn()
        setupshareimg()
        setupsharelbl()
        setupsavebtn()
        setupsaveimg()
        setupsavelbl()
        
        
    }
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
