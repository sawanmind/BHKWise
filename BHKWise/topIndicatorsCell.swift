//
//  topIndicatorsCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class topIndicatorsCell: UICollectionViewCell, UIScrollViewDelegate {
    
    
    
    
    
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
    
    
    
    let TopIndicatorssconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupTopIndicatorssconatinerView(){
        scrollview.addSubview(TopIndicatorssconatinerView)
        TopIndicatorssconatinerView.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        TopIndicatorssconatinerView.centerYAnchor.constraint(equalTo: scrollview.centerYAnchor).isActive = true
        TopIndicatorssconatinerView.widthAnchor.constraint(equalTo: scrollview.widthAnchor).isActive = true
        TopIndicatorssconatinerView.heightAnchor.constraint(equalTo: scrollview.heightAnchor).isActive = true
        
    }
    
    
    
    let marketPriceImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupmarketPriceImg(){
        addSubview(marketPriceImg)
        marketPriceImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        marketPriceImg.topAnchor.constraint(equalTo: TopIndicatorssconatinerView.topAnchor, constant: 82).isActive = true
        marketPriceImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        marketPriceImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let marketPricelbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Market Price"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupmarketPricelbl(){
        
        addSubview(marketPricelbl)
        marketPricelbl.topAnchor.constraint(equalTo:TopIndicatorssconatinerView.topAnchor,constant:65).isActive = true
        marketPricelbl.leftAnchor.constraint(equalTo:marketPriceImg.rightAnchor,constant: 20).isActive = true
        marketPricelbl.widthAnchor.constraint(equalTo: marketPricelbl.widthAnchor).isActive = true
        marketPricelbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let marketPrice: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "is dipping"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupmarketPrice(){
        
        addSubview(marketPrice)
        marketPrice.topAnchor.constraint(equalTo:marketPricelbl.bottomAnchor,constant:7).isActive = true
        marketPrice.leftAnchor.constraint(equalTo:marketPriceImg.rightAnchor,constant: 20).isActive = true
        marketPrice.widthAnchor.constraint(equalTo: marketPricelbl.widthAnchor).isActive = true
        marketPrice.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView1: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView1(){
        addSubview(seperatorView1)
        seperatorView1.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView1.topAnchor.constraint(equalTo: marketPrice.bottomAnchor,constant: 10).isActive = true
        seperatorView1.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    
    
    
    
    
    
    
    let priceRankImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setuppriceRankImg(){
        addSubview(priceRankImg)
        priceRankImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        priceRankImg.topAnchor.constraint(equalTo: seperatorView1.topAnchor, constant: 27).isActive = true
        priceRankImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        priceRankImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let priceRanklbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Price Rank"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setuppriceRanklbl(){
        
        addSubview(priceRanklbl)
        priceRanklbl.topAnchor.constraint(equalTo:seperatorView1.topAnchor,constant:10).isActive = true
        priceRanklbl.leftAnchor.constraint(equalTo:priceRankImg.rightAnchor,constant: 20).isActive = true
        priceRanklbl.widthAnchor.constraint(equalTo: priceRanklbl.widthAnchor).isActive = true
        priceRanklbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let priceRank: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "is similar to locality average"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setuppriceRank(){
        
        addSubview(priceRank)
        priceRank.topAnchor.constraint(equalTo:priceRanklbl.bottomAnchor,constant:7).isActive = true
        priceRank.leftAnchor.constraint(equalTo:priceRankImg.rightAnchor,constant: 20).isActive = true
        priceRank.widthAnchor.constraint(equalTo: priceRank.widthAnchor).isActive = true
        priceRank.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView2: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView2(){
        addSubview(seperatorView2)
        seperatorView2.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView2.topAnchor.constraint(equalTo: priceRank.bottomAnchor,constant: 10).isActive = true
        seperatorView2.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    
    
    let CarpetarealoadingImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupCarpetarealoadingImg(){
        addSubview(CarpetarealoadingImg)
        CarpetarealoadingImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        CarpetarealoadingImg.topAnchor.constraint(equalTo: seperatorView2.topAnchor, constant: 27).isActive = true
        CarpetarealoadingImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        CarpetarealoadingImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let Carpetarealoadinglbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Carpet area loading"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupCarpetarealoadinglbl(){
        
        addSubview(Carpetarealoadinglbl)
        Carpetarealoadinglbl.topAnchor.constraint(equalTo:seperatorView2.topAnchor,constant:10).isActive = true
        Carpetarealoadinglbl.leftAnchor.constraint(equalTo:CarpetarealoadingImg.rightAnchor,constant: 20).isActive = true
        Carpetarealoadinglbl.widthAnchor.constraint(equalTo: priceRanklbl.widthAnchor).isActive = true
        Carpetarealoadinglbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let Carpetarealoading: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "is standard, it is similar to the usual"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupCarpetarealoading(){
        
        addSubview(Carpetarealoading)
        Carpetarealoading.topAnchor.constraint(equalTo:Carpetarealoadinglbl.bottomAnchor,constant:7).isActive = true
        Carpetarealoading.leftAnchor.constraint(equalTo:CarpetarealoadingImg.rightAnchor,constant: 20).isActive = true
        Carpetarealoading.widthAnchor.constraint(equalTo: Carpetarealoading.widthAnchor).isActive = true
        Carpetarealoading.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView3: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView3(){
        addSubview(seperatorView3)
        seperatorView3.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView3.topAnchor.constraint(equalTo: Carpetarealoading.bottomAnchor,constant: 10).isActive = true
        seperatorView3.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    
    
    let InvestmentpotentialImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupInvestmentpotentialImg(){
        addSubview(InvestmentpotentialImg)
        InvestmentpotentialImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        InvestmentpotentialImg.topAnchor.constraint(equalTo: seperatorView3.topAnchor, constant: 27).isActive = true
        InvestmentpotentialImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        InvestmentpotentialImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let Investmentpotentiallbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Investment potential"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupInvestmentpotentiallbl(){
        
        addSubview(Investmentpotentiallbl)
        Investmentpotentiallbl.topAnchor.constraint(equalTo:seperatorView3.bottomAnchor,constant:10).isActive = true
        Investmentpotentiallbl.leftAnchor.constraint(equalTo:InvestmentpotentialImg.rightAnchor,constant: 20).isActive = true
        Investmentpotentiallbl.widthAnchor.constraint(equalTo: Investmentpotentiallbl.widthAnchor).isActive = true
        Investmentpotentiallbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let Investmentpotential: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "is high"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupInvestmentpotential(){
        
        addSubview(Investmentpotential)
        Investmentpotential.topAnchor.constraint(equalTo:Investmentpotentiallbl.bottomAnchor,constant:7).isActive = true
        Investmentpotential.leftAnchor.constraint(equalTo:InvestmentpotentialImg.rightAnchor,constant: 20).isActive = true
        Investmentpotential.widthAnchor.constraint(equalTo: Investmentpotential.widthAnchor).isActive = true
        Investmentpotential.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView4: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView4(){
        addSubview(seperatorView4)
        seperatorView4.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView4.topAnchor.constraint(equalTo: Investmentpotential.bottomAnchor,constant: 10).isActive = true
        seperatorView4.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView4.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    
    let FacilitiesinlocalityImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupFacilitiesinlocalityImg(){
        addSubview(FacilitiesinlocalityImg)
        FacilitiesinlocalityImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        FacilitiesinlocalityImg.topAnchor.constraint(equalTo: seperatorView4.topAnchor, constant: 27).isActive = true
        FacilitiesinlocalityImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        FacilitiesinlocalityImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let Facilitiesinlocalitylbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Facilities in locality"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupFacilitiesinlocalitylbl(){
        
        addSubview(Facilitiesinlocalitylbl)
        Facilitiesinlocalitylbl.topAnchor.constraint(equalTo:seperatorView4.topAnchor,constant:10).isActive = true
        Facilitiesinlocalitylbl.leftAnchor.constraint(equalTo:FacilitiesinlocalityImg.rightAnchor,constant: 20).isActive = true
        Facilitiesinlocalitylbl.widthAnchor.constraint(equalTo: priceRanklbl.widthAnchor).isActive = true
        Facilitiesinlocalitylbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let Facilitiesinlocality: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "are mediore and need improvement"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupFacilitiesinlocality(){
        
        addSubview(Facilitiesinlocality)
        Facilitiesinlocality.topAnchor.constraint(equalTo:Facilitiesinlocalitylbl.bottomAnchor,constant:7).isActive = true
        Facilitiesinlocality.leftAnchor.constraint(equalTo:FacilitiesinlocalityImg.rightAnchor,constant: 20).isActive = true
        Facilitiesinlocality.widthAnchor.constraint(equalTo: Facilitiesinlocality.widthAnchor).isActive = true
        Facilitiesinlocality.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView5: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView5(){
        addSubview(seperatorView5)
        seperatorView5.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView5.topAnchor.constraint(equalTo: Facilitiesinlocality.bottomAnchor,constant: 10).isActive = true
        seperatorView5.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView5.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    
    
    let AmenitiesinhousingImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "greentriangle")
        return img
    }()
    
    
    func setupAmenitiesinhousingImg(){
        addSubview(AmenitiesinhousingImg)
        AmenitiesinhousingImg.leftAnchor.constraint(equalTo: TopIndicatorssconatinerView.leftAnchor, constant: 15).isActive = true
        AmenitiesinhousingImg.topAnchor.constraint(equalTo: seperatorView5.topAnchor, constant: 27).isActive = true
        AmenitiesinhousingImg.widthAnchor.constraint(equalToConstant: 25).isActive = true
        AmenitiesinhousingImg.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
    let Amenitiesinhousinglbl: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Amenities in housing"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 24)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupAmenitiesinhousinglbl(){
        
        addSubview(Amenitiesinhousinglbl)
        Amenitiesinhousinglbl.topAnchor.constraint(equalTo:seperatorView5.topAnchor,constant:10).isActive = true
        Amenitiesinhousinglbl.leftAnchor.constraint(equalTo:AmenitiesinhousingImg.rightAnchor,constant: 20).isActive = true
        Amenitiesinhousinglbl.widthAnchor.constraint(equalTo: Amenitiesinhousinglbl.widthAnchor).isActive = true
        Amenitiesinhousinglbl.heightAnchor.constraint(equalToConstant: 26).isActive = true
    }
    
    
    let Amenitiesinhousing: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "provided are average"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 19)
        lbl.textColor =  UIColor.white
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    func setupAmenitiesinhousing(){
        
        addSubview(Amenitiesinhousing)
        Amenitiesinhousing.topAnchor.constraint(equalTo:Amenitiesinhousinglbl.bottomAnchor,constant:7).isActive = true
        Amenitiesinhousing.leftAnchor.constraint(equalTo:AmenitiesinhousingImg.rightAnchor,constant: 20).isActive = true
        Amenitiesinhousing.widthAnchor.constraint(equalTo: Amenitiesinhousing.widthAnchor).isActive = true
        Amenitiesinhousing.heightAnchor.constraint(equalToConstant: 21).isActive = true
    }
    let seperatorView6: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView6(){
        addSubview(seperatorView6)
        seperatorView6.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        seperatorView6.topAnchor.constraint(equalTo: Amenitiesinhousing.bottomAnchor,constant: 10).isActive = true
        seperatorView6.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView6.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    
    
    let topIndicatorBottomImg: UIImageView = {
        let img  = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        img.image = UIImage(named: "bottomImg")
        return img
    }()
    
    
    func setuptopIndicatorBottomImg(){
        addSubview(topIndicatorBottomImg)
        topIndicatorBottomImg.centerXAnchor.constraint(equalTo: TopIndicatorssconatinerView.centerXAnchor).isActive = true
        topIndicatorBottomImg.topAnchor.constraint(equalTo: seperatorView6.topAnchor, constant: 27).isActive = true
        topIndicatorBottomImg.widthAnchor.constraint(equalTo: TopIndicatorssconatinerView.widthAnchor, constant: -30).isActive = true
        topIndicatorBottomImg.heightAnchor.constraint(equalToConstant: 180).isActive = true
    }
    
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        
        scrollview.contentOffset = CGPoint(x: 0, y: 0)
        scrollview.contentSize = CGSize(width: TopIndicatorssconatinerView.bounds.width, height: 400)
        
        setupbgconatinerView()
        setupscrollview()
        setupTopIndicatorssconatinerView()
        setupmarketPriceImg()
        setupmarketPricelbl()
        setupmarketPrice()
        setupseperatorView1()
        setuppriceRankImg()
        setuppriceRanklbl()
        setuppriceRank()
        setupseperatorView2()
        setupCarpetarealoadingImg()
        setupCarpetarealoadinglbl()
        setupCarpetarealoading()
        setupseperatorView3()
        setupInvestmentpotentialImg()
        setupInvestmentpotentiallbl()
        setupInvestmentpotential()
        setupseperatorView4()
        setupFacilitiesinlocalityImg()
        setupFacilitiesinlocalitylbl()
        setupFacilitiesinlocality()
        setupseperatorView5()
        setupAmenitiesinhousingImg()
        setupAmenitiesinhousinglbl()
        setupAmenitiesinhousing()
        setupseperatorView6()
        setuptopIndicatorBottomImg()
        
    }
    
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
