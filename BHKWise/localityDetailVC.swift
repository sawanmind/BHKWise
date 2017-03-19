//
//  localityDetailVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class localityDetailVC: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    
    let cellidentifier = "cell"
    var titlelbl : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collectionView?.backgroundColor = UIColor(red: 199/255, green: 199/255, blue: 204/255, alpha: 1)
        
        collectionView?.register(localityDetailcustomCell.self, forCellWithReuseIdentifier: cellidentifier)
        let img = UIImage(named: "notification")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(handlenotification))
        
        collectionView?.contentInset = UIEdgeInsets(top: 36, left: 0, bottom: 0, right: 0)
        setupsearchBarBGView()
    }
    
    let searchBarView : TopSearchBarView = {
        let view = TopSearchBarView()
        view.searchbar.placeholder = "Search housing"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func setupsearchBarBGView(){
        view.addSubview(searchBarView)
        
        searchBarView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        searchBarView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        searchBarView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        searchBarView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
    func handlenotification(){
        
        let new = notificationVC()
        self.present(UINavigationController(rootViewController: new), animated: true, completion: nil)
    }
    
    
    
    func handleviewbtn(){
        
        let flowlayout = UICollectionViewFlowLayout()
        let new = housingDetailVC(collectionViewLayout: flowlayout)
        
        self.navigationController?.pushViewController(new, animated: true)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationItem.title = titlelbl
        
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellidentifier, for: indexPath) as! localityDetailcustomCell
        
        cell.viewbtn.addTarget(self, action: #selector(handleviewbtn), for: .touchUpInside)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 225)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}



class localityDetailcustomCell: UICollectionViewCell {
    override init(frame: CGRect){
        
        super.init(frame: frame)
        
        setupView()
    }
    
    
    let blockView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 5
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
        return view
    }()
    
//    let titleLabel : UILabel = {
//        let lbl = UILabel()
//        lbl.text = "NH8-MG Road"
//        lbl.textColor = UIColor.white
//        return lbl
//    }()
    
    
    func setuphomeblockImg(){
        
        blockView.topAnchor.constraint(equalTo: self.topAnchor,constant: 7).isActive = true
        blockView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        blockView.widthAnchor.constraint(equalTo: self.widthAnchor,constant: -7).isActive = true
        blockView.heightAnchor.constraint(equalToConstant: 225).isActive = true
    }
    
    
    let statusblockView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 15
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 70/255, green: 191/255, blue: 81/255, alpha: 1)
        return view
    }()
    func setupstatusblockView(){
        
        statusblockView.topAnchor.constraint(equalTo: blockView.topAnchor,constant: 10).isActive = true
        statusblockView.leftAnchor.constraint(equalTo: blockView.leftAnchor,constant: 14).isActive = true
        statusblockView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        statusblockView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    let localityNamelbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 18)
       // lbl.text = "NH8-MG Road"
        lbl.textColor = UIColor.white
        return lbl
    }()
    
    func setuplocalityNamelbl(){
        
        localityNamelbl.topAnchor.constraint(equalTo: blockView.topAnchor,constant: 15).isActive = true
        localityNamelbl.centerXAnchor.constraint(equalTo: blockView.centerXAnchor).isActive = true
        localityNamelbl.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        localityNamelbl.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    
    
    let areaNamelbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 15)
        lbl.text = "Gurugram"
        lbl.textColor = UIColor.white
        return lbl
    }()
    
    func setupareaNamelbl(){
        
        areaNamelbl.topAnchor.constraint(equalTo: statusblockView.bottomAnchor,constant: 22).isActive = true
        areaNamelbl.leftAnchor.constraint(equalTo: blockView.leftAnchor,constant: 14).isActive = true
        areaNamelbl.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        areaNamelbl.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    
    
    let croreprice : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 22)
        lbl.text = "5.73"
        lbl.textColor = UIColor(red: 55/155, green: 115/155, blue: 229/155, alpha: 1)
        return lbl
    }()
    
    func setupcroreprice(){
        
        croreprice.leftAnchor.constraint(equalTo: priceRangeView.leftAnchor).isActive = true
        croreprice.centerYAnchor.constraint(equalTo: priceRangeView.centerYAnchor).isActive = true
        croreprice.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        croreprice.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    
    let crorepricelbl : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 22)
        lbl.text = "Cr,"
        lbl.textColor = UIColor.white
        return lbl
    }()
    func setupcrorepricelbl(){
        
        crorepricelbl.leftAnchor.constraint(equalTo: croreprice.leftAnchor,constant: 50).isActive = true
        crorepricelbl.centerYAnchor.constraint(equalTo: priceRangeView.centerYAnchor).isActive = true
        crorepricelbl.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        crorepricelbl.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
    
    
    let lakhprice : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 22)
        lbl.text = "1.15"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = UIColor(red: 55/155, green: 115/155, blue: 229/155, alpha: 1)
        return lbl
    }()
    
    func setuplakhprice(){
        
        lakhprice.leftAnchor.constraint(equalTo: crorepricelbl.leftAnchor,constant: 35).isActive = true
        lakhprice.centerYAnchor.constraint(equalTo: priceRangeView.centerYAnchor).isActive = true
        lakhprice.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        lakhprice.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
        
    }
    
    let lakhpricelbl : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 22)
        lbl.text = "L"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor =  UIColor.white
        return lbl
    }()
    
    func setuplakhpricelbl(){
        
        lakhpricelbl.leftAnchor.constraint(equalTo: lakhprice.leftAnchor,constant: 50).isActive = true
        lakhpricelbl.centerYAnchor.constraint(equalTo: priceRangeView.centerYAnchor).isActive = true
        lakhpricelbl.widthAnchor.constraint(equalTo: localityNamelbl.widthAnchor).isActive = true
        lakhpricelbl.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
    
    
    let priceRangeView : UIView = {
        let lbl = UIView()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.backgroundColor = UIColor.clear
        return lbl
    }()
    
    func setuppriceRangeview(){
        
        priceRangeView.topAnchor.constraint(equalTo: statusblockView.bottomAnchor,constant: 22).isActive = true
        priceRangeView.rightAnchor.constraint(equalTo: blockView.rightAnchor,constant: -14).isActive = true
        priceRangeView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        priceRangeView.heightAnchor.constraint(equalToConstant: 24).isActive = true
    }
    
    
    let bhkWiseRating : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 21)
        lbl.text = "99%"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor =  UIColor(red: 245/255, green: 229/255, blue: 24/255, alpha: 1)
        return lbl
    }()
    
    func setupbhkWiseRating(){
        bhkWiseRating.topAnchor.constraint(equalTo: areaNamelbl.bottomAnchor,constant: 46).isActive = true
        bhkWiseRating.leftAnchor.constraint(equalTo: blockView.leftAnchor,constant: 14).isActive = true
        bhkWiseRating.widthAnchor.constraint(equalTo: bhkWiseRating.widthAnchor).isActive = true
        bhkWiseRating.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
    
    let bhkWiseRatinglbl : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 12)
        lbl.text = "BHK Wise Rating"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor =  UIColor.white
        return lbl
    }()
    
    func setupbhkWiseRatinglbl(){
        bhkWiseRatinglbl.topAnchor.constraint(equalTo: areaNamelbl.bottomAnchor,constant: 51).isActive = true
        bhkWiseRatinglbl.leftAnchor.constraint(equalTo: bhkWiseRating.rightAnchor,constant: 3).isActive = true
        bhkWiseRatinglbl.widthAnchor.constraint(equalTo: bhkWiseRatinglbl.widthAnchor).isActive = true
        bhkWiseRatinglbl.heightAnchor.constraint(equalToConstant: 16).isActive = true
    }
    
    
    let localityStatus : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 21)
        lbl.text = "+0 pts"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor =  UIColor(red: 60/255, green: 182/255, blue: 64/255, alpha: 1)
        return lbl
    }()
    
    func setuplocalityStatus(){
        localityStatus.topAnchor.constraint(equalTo: areaNamelbl.bottomAnchor,constant: 46).isActive = true
        localityStatus.rightAnchor.constraint(equalTo: localityStatuslbl.leftAnchor,constant: -3).isActive = true
        localityStatus.widthAnchor.constraint(equalTo: localityStatus.widthAnchor).isActive = true
        localityStatus.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
    
    
    let localityStatuslbl : UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "AvenirNext-Medium", size: 12)
        lbl.text = "Locality Status"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor =  UIColor.white
        return lbl
    }()
    
    func setuplocalityStatuslbl(){
        localityStatuslbl.topAnchor.constraint(equalTo: areaNamelbl.bottomAnchor,constant: 53).isActive = true
        localityStatuslbl.rightAnchor.constraint(equalTo: blockView.rightAnchor,constant: -14).isActive = true
        localityStatuslbl.widthAnchor.constraint(equalTo: localityStatuslbl.widthAnchor).isActive = true
        localityStatuslbl.heightAnchor.constraint(equalToConstant: 12).isActive = true
    }
    
    lazy var viewbtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("View", for: .normal)
        btn.layer.cornerRadius = 15
        btn.layer.masksToBounds = true
        btn.backgroundColor = UIColor.white
        let color = UIColor(red: 0/255, green: 30/255, blue: 100/255, alpha: 1)
        btn.setTitleColor(color, for: .normal)
        
        return btn
    }()
    
    
    
    func setupviewbtn(){
        
        viewbtn.bottomAnchor.constraint(equalTo: blockView.bottomAnchor, constant: -15).isActive = true
        viewbtn.leftAnchor.constraint(equalTo: blockView.leftAnchor, constant: 14).isActive = true
        viewbtn.widthAnchor.constraint(equalTo: blockView.widthAnchor, multiplier: 1/3, constant: -20).isActive = true
        viewbtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    lazy var buybtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Buy", for: .normal)
        btn.layer.cornerRadius = 15
        btn.layer.masksToBounds = true
        btn.backgroundColor = UIColor.white
        let color = UIColor(red: 0/255, green: 30/255, blue: 100/255, alpha: 1)
        btn.setTitleColor(color, for: .normal)
        // btn.addTarget(self, action: #selector(handleviewbtn), for: .touchUpInside)
        return btn
    }()
    
    func setupbuybtn(){
        
        buybtn.bottomAnchor.constraint(equalTo: blockView.bottomAnchor, constant: -15).isActive = true
        buybtn.centerXAnchor.constraint(equalTo: blockView.centerXAnchor).isActive = true
        buybtn.widthAnchor.constraint(equalToConstant: 120).isActive = true
        buybtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    lazy var sharebtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Share", for: .normal)
        btn.layer.cornerRadius = 15
        btn.layer.masksToBounds = true
        btn.backgroundColor = UIColor.white
        let color = UIColor(red: 0/255, green: 30/255, blue: 100/255, alpha: 1)
        btn.setTitleColor(color, for: .normal)
        btn.addTarget(self, action: #selector(handlesharebtn), for: .touchUpInside)
        return btn
    }()
    
    func setupsharebtn(){
        
        sharebtn.bottomAnchor.constraint(equalTo: blockView.bottomAnchor, constant: -15).isActive = true
        sharebtn.rightAnchor.constraint(equalTo: blockView.rightAnchor, constant: -14).isActive = true
        sharebtn.widthAnchor.constraint(equalTo: blockView.widthAnchor, multiplier: 1/3, constant: -20).isActive = true
        sharebtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupView(){
        
        
        addSubview(blockView)
        setuphomeblockImg()
        blockView.addSubview(statusblockView)
        setupstatusblockView()
        blockView.addSubview(localityNamelbl)
        setuplocalityNamelbl()
        blockView.addSubview(areaNamelbl)
        setupareaNamelbl()
        blockView.addSubview(priceRangeView)
        setuppriceRangeview()
        priceRangeView.addSubview(croreprice)
        setupcroreprice()
        priceRangeView.addSubview(crorepricelbl)
        setupcrorepricelbl()
        priceRangeView.addSubview(lakhprice)
        setuplakhprice()
        priceRangeView.addSubview(lakhpricelbl)
        setuplakhpricelbl()
        blockView.addSubview(bhkWiseRating)
        setupbhkWiseRating()
        blockView.addSubview(bhkWiseRatinglbl)
        setupbhkWiseRatinglbl()
        blockView.addSubview(localityStatuslbl)
        setuplocalityStatuslbl()
        blockView.addSubview(localityStatus)
        setuplocalityStatus()
        blockView.addSubview(viewbtn)
        setupviewbtn()
        blockView.addSubview(buybtn)
        setupbuybtn()
        blockView.addSubview(sharebtn)
        setupsharebtn()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func handlesharebtn(){
        
        print(123)
    }
}



