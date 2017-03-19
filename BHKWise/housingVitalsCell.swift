//
//  housingVitalsCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//
import UIKit

class housingVitalsCell: UICollectionViewCell , UIScrollViewDelegate{
    
    
    
    
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
    
    
    
    
    let HousingVitalsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.navigationColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupHousingVitalsconatinerView(){
        scrollview.addSubview(HousingVitalsconatinerView)
        HousingVitalsconatinerView.centerXAnchor.constraint(equalTo: scrollview.centerXAnchor).isActive = true
        HousingVitalsconatinerView.centerYAnchor.constraint(equalTo: scrollview.centerYAnchor).isActive = true
        HousingVitalsconatinerView.widthAnchor.constraint(equalTo: scrollview.widthAnchor).isActive = true
        HousingVitalsconatinerView.heightAnchor.constraint(equalTo: scrollview.heightAnchor).isActive = true
        
    }
    
    let addresslbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Address"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 26)
        lbl.textColor = UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupaddresslbl(){
        HousingVitalsconatinerView.addSubview(addresslbl)
        addresslbl.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        addresslbl.topAnchor.constraint(equalTo: HousingVitalsconatinerView.topAnchor,constant: 36).isActive = true
        addresslbl.widthAnchor.constraint(equalTo: addresslbl.widthAnchor).isActive = true
        addresslbl.heightAnchor.constraint(equalTo: addresslbl.heightAnchor).isActive = true
        
    }
    
    let address: UILabel = {
        let lbl = UILabel()
        lbl.text = "MGF Vilas DLF Phase 2, Sector 25 Gurgaon, Haryana 122002, NH8-MG Road, Gurugram, NCR"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupaddress(){
        addSubview(address)
        address.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        address.topAnchor.constraint(equalTo: addresslbl.bottomAnchor,constant: 16).isActive = true
        address.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        address.heightAnchor.constraint(equalTo: address.heightAnchor).isActive = true
        
    }
    
    let seperatorView1: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView1(){
        addSubview(seperatorView1)
        seperatorView1.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        seperatorView1.topAnchor.constraint(equalTo: address.bottomAnchor,constant: 10).isActive = true
        seperatorView1.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    
    let BasicSellingPricelbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Basic Selling Price"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 26)
        lbl.textColor = UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupBasicSellingPricelbl(){
        addSubview(BasicSellingPricelbl)
        BasicSellingPricelbl.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        BasicSellingPricelbl.topAnchor.constraint(equalTo: seperatorView1.topAnchor,constant: 10).isActive = true
        BasicSellingPricelbl.widthAnchor.constraint(equalTo: BasicSellingPricelbl.widthAnchor).isActive = true
        BasicSellingPricelbl.heightAnchor.constraint(equalTo: BasicSellingPricelbl.heightAnchor).isActive = true
        
    }
    let BasicSellingPrice: UILabel = {
        let lbl = UILabel()
        lbl.text = "12490 Rs/sqft"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupBasicSellingPrice(){
        addSubview(BasicSellingPrice)
        BasicSellingPrice.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        BasicSellingPrice.topAnchor.constraint(equalTo: BasicSellingPricelbl.bottomAnchor,constant: 10).isActive = true
        BasicSellingPrice.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor).isActive = true
        BasicSellingPrice.heightAnchor.constraint(equalTo: BasicSellingPrice.heightAnchor).isActive = true
        
    }
    
    
    let statuslbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Status"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 26)
        lbl.textColor = UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupstatuslbl(){
        addSubview(statuslbl)
        statuslbl.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        statuslbl.topAnchor.constraint(equalTo: BasicSellingPrice.bottomAnchor,constant: 30).isActive = true
        statuslbl.widthAnchor.constraint(equalTo: statuslbl.widthAnchor).isActive = true
        statuslbl.heightAnchor.constraint(equalTo: statuslbl.heightAnchor).isActive = true
        
    }
    let status: UILabel = {
        let lbl = UILabel()
        lbl.text = "Complete"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupstatus(){
        addSubview(status)
        status.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        status.topAnchor.constraint(equalTo: statuslbl.bottomAnchor,constant: 10).isActive = true
        status.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor).isActive = true
        status.heightAnchor.constraint(equalTo: status.heightAnchor).isActive = true
        
    }
    
    
    let seperatorView2: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView2(){
        addSubview(seperatorView2)
        seperatorView2.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        seperatorView2.topAnchor.constraint(equalTo: status.bottomAnchor,constant: 10).isActive = true
        seperatorView2.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    let bhkInventorylbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "BHK Inventory"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 26)
        lbl.textColor = UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupbhkInventorylbl(){
        addSubview(bhkInventorylbl)
        bhkInventorylbl.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        bhkInventorylbl.topAnchor.constraint(equalTo: seperatorView2.bottomAnchor,constant: 10).isActive = true
        bhkInventorylbl.widthAnchor.constraint(equalTo: bhkInventorylbl.widthAnchor).isActive = true
        bhkInventorylbl.heightAnchor.constraint(equalTo: bhkInventorylbl.heightAnchor).isActive = true
        
    }
    
    let onebhk : UILabel = {
        let lbl = UILabel()
        lbl.text = "1BK     \("NA")"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuponebhk(){
        addSubview(onebhk)
        onebhk.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        onebhk.topAnchor.constraint(equalTo: bhkInventorylbl.bottomAnchor,constant: 16).isActive = true
        onebhk.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        onebhk.heightAnchor.constraint(equalTo: onebhk.heightAnchor).isActive = true
        
    }
    
    
    let twobhk : UILabel = {
        let lbl = UILabel()
        lbl.text = "2BK     \("750, 1060, 1125")"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setuptwobhk(){
        addSubview(twobhk)
        twobhk.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        twobhk.topAnchor.constraint(equalTo: onebhk.bottomAnchor,constant: 7).isActive = true
        twobhk.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        twobhk.heightAnchor.constraint(equalTo: twobhk.heightAnchor).isActive = true
        
    }
    
    let threebhk : UILabel = {
        let lbl = UILabel()
        lbl.text = "3BK     \("1450, 1875, 1975, 2735, 3170")"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupthreebhk(){
        addSubview(threebhk)
        threebhk.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        threebhk.topAnchor.constraint(equalTo: twobhk.bottomAnchor,constant: 7).isActive = true
        threebhk.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        threebhk.heightAnchor.constraint(equalTo: threebhk.heightAnchor).isActive = true
        
    }
    
    let fourbhk : UILabel = {
        let lbl = UILabel()
        lbl.text = "4BK     \(3828)"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupfourbhk(){
        addSubview(fourbhk)
        fourbhk.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        fourbhk.topAnchor.constraint(equalTo: threebhk.bottomAnchor,constant: 7).isActive = true
        fourbhk.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        fourbhk.heightAnchor.constraint(equalTo: fourbhk.heightAnchor).isActive = true
        
    }
    
    
    
    let fivebhk : UILabel = {
        let lbl = UILabel()
        lbl.text = "5BK     \("NA")"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupfivebhk(){
        addSubview(fivebhk)
        fivebhk.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        fivebhk.topAnchor.constraint(equalTo: fourbhk.bottomAnchor,constant: 7).isActive = true
        fivebhk.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        fivebhk.heightAnchor.constraint(equalTo: fivebhk.heightAnchor).isActive = true
        
    }
    let starmark : UILabel = {
        let lbl = UILabel()
        lbl.text = "*Inventory is shown in sq.ft. area"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 8)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .justified
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupstarmark(){
        addSubview(starmark)
        starmark.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        starmark.topAnchor.constraint(equalTo: fivebhk.bottomAnchor,constant: 16).isActive = true
        starmark.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        starmark.heightAnchor.constraint(equalTo: starmark.heightAnchor).isActive = true
        
    }
    
    
    let seperatorView3: UIView = {
        let lbl = UIView()
        lbl.backgroundColor =  UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupseperatorView3(){
        addSubview(seperatorView3)
        seperatorView3.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        seperatorView3.topAnchor.constraint(equalTo: starmark.bottomAnchor,constant: 10).isActive = true
        seperatorView3.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        seperatorView3.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
    }
    
    let descriptionlbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Description"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 26)
        lbl.textColor = UIColor(red: 133/255, green: 133/255, blue: 133/255, alpha: 1)
        lbl.textAlignment = .center
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupdescriptionlbl(){
        addSubview(descriptionlbl)
        descriptionlbl.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        descriptionlbl.topAnchor.constraint(equalTo: seperatorView3.bottomAnchor,constant: 10).isActive = true
        descriptionlbl.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        descriptionlbl.heightAnchor.constraint(equalTo: descriptionlbl.heightAnchor).isActive = true
        
    }
    
    let descriptiontxt : UILabel = {
        let lbl = UILabel()
        lbl.text = "\("Situated in vicinity of NH8-MG Road, MGF Vilas is a recent construction. A completed and functional society, the multistory apartments complex ranks best for interior. In comparison to other housings lying within the influence zone of NH8-MG Road, it is observed that MGF Vilas’s interior is best within locality. The lifestyle offered by the housing is average on location. Being a newly completed society, there will be minimal repairs required and the structure will be of good quality. Locality analysis shows the general facilities provided in adjacent areas are mediocre and need improvement. Market studies indicate the price trend is dipping for this housing, and the basic selling price is similar to locality average. WISE FACT : Housing is located near offices/commercial areas; good potential for rental. To know more facts like these, download our Pre-Chk Report.")"
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 16)
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.lineBreakMode = .byWordWrapping
        lbl.numberOfLines  = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupdescription(){
        addSubview(descriptiontxt)
        descriptiontxt.centerXAnchor.constraint(equalTo: HousingVitalsconatinerView.centerXAnchor).isActive = true
        descriptiontxt.topAnchor.constraint(equalTo: descriptionlbl.bottomAnchor,constant: 16).isActive = true
        descriptiontxt.widthAnchor.constraint(equalTo: HousingVitalsconatinerView.widthAnchor,constant: -32).isActive = true
        descriptiontxt.heightAnchor.constraint(equalTo: descriptiontxt.heightAnchor).isActive = true
        
    }
    
    
    lazy var sharebtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = UIColor.white
        btn.layer.cornerRadius = 23
        btn.addTarget(self, action: #selector(handleshare), for: .touchUpInside)
        btn.layer.masksToBounds = true
        btn.isUserInteractionEnabled = true
        return btn
    }()
    
    
    func setupsharebtn(){
        addSubview(sharebtn)
        sharebtn.leftAnchor.constraint(equalTo: HousingVitalsconatinerView.leftAnchor, constant: 30).isActive = true
        sharebtn.topAnchor.constraint(equalTo: descriptiontxt.bottomAnchor,constant: 46).isActive = true
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
        btn.addTarget(self, action: #selector(handleshare), for: .touchUpInside)
        btn.layer.masksToBounds = true
        btn.isUserInteractionEnabled = true
        return btn
    }()
    
    
    func setupsavebtn(){
        addSubview(savebtn)
        savebtn.rightAnchor.constraint(equalTo: HousingVitalsconatinerView.rightAnchor, constant: -30).isActive = true
        savebtn.topAnchor.constraint(equalTo: descriptiontxt.bottomAnchor,constant: 46).isActive = true
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
        scrollview.contentSize = CGSize(width: HousingVitalsconatinerView.bounds.width, height: 1200)
        setupbgconatinerView()
        setupHousingVitalsconatinerView()
        setupaddresslbl()
        setupaddress()
        setupseperatorView1()
        setupBasicSellingPricelbl()
        setupBasicSellingPrice()
        setupstatuslbl()
        setupstatus()
        setupseperatorView2()
        setupbhkInventorylbl()
        setuponebhk()
        setuptwobhk()
        setupthreebhk()
        setupfourbhk()
        setupfivebhk()
        setupstarmark()
        setupseperatorView3()
        setupdescriptionlbl()
        setupdescription()
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



extension housingVitalsCell {
    
    func handleshare(){
        
        print(123)
    }
}
