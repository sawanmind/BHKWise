//
//  housingheaderView.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class housingheaderView: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cellLblData = ["Rating Snapshot","Housing Vitals","Housing vs Locality","Top Indicators","Nearby Housing","Key Insights","Detailed Rating","Wiso Meter"]
    
    lazy var collectioView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = UIColor.navigationColor
        cv.showsHorizontalScrollIndicator = false
        cv.delegate = self
        cv.dataSource = self
        
        return cv
    }()
    
    func setupcollectioView(){
        
        collectioView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        collectioView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        collectioView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        collectioView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    
    
    let cellId = "cellid"
    var housingdetailVC: housingDetailVC?
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        
        collectioView.register(customCell.self, forCellWithReuseIdentifier: cellId)
        backgroundColor = UIColor.navigationColor
        addSubview(collectioView)
        setupcollectioView()
        
        
        let selectedIndexPath = IndexPath(item: 0, section: 0)
        collectioView.selectItem(at: selectedIndexPath, animated: false, scrollPosition: UICollectionViewScrollPosition())
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var horizontalBarLeftAnchorConstraint: NSLayoutConstraint?
    
    func setupHorizontalBar() {
        let horizontalBarView = UIView()
        horizontalBarView.backgroundColor = UIColor(red: 255/255, green: 251/255, blue: 16/255, alpha: 1)
        horizontalBarView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(horizontalBarView)
        
        horizontalBarLeftAnchorConstraint = horizontalBarView.leftAnchor.constraint(equalTo: self.leftAnchor)
        horizontalBarLeftAnchorConstraint?.isActive = true
        
        horizontalBarView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        horizontalBarView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/4).isActive = true
        horizontalBarView.heightAnchor.constraint(equalToConstant: 4).isActive = true
    }
    
    
}


extension housingheaderView {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectioView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! customCell
        cell.backgroundColor = UIColor.clear
        cell.scrollinglbl.text = cellLblData[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        housingdetailVC?.scrollToMenuIndex(indexPath.item)
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        
        self.horizontalBarLeftAnchorConstraint?.constant = scrollView.contentOffset.x / 8
        
    }
    
}


class customCell: UICollectionViewCell {
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        setupscrollinglbl()
        
    }
    
    
    let scrollinglbl : UILabel = {
        let lbl = UILabel()
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.font = UIFont(name: ".SF NS Display", size: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override var isHighlighted: Bool {
        
        didSet{
            
            scrollinglbl.textColor = isHighlighted ? UIColor(red: 255/255, green: 251/255, blue: 16/255, alpha: 1) : UIColor.white
            
        }
    }
    
    override var isSelected: Bool {
        
        didSet{
            
            scrollinglbl.textColor = isSelected ? UIColor(red: 255/255, green: 251/255, blue: 16/255, alpha: 1) : UIColor.white
            
        }
    }
    
    
    
    func setupscrollinglbl(){
        addSubview(scrollinglbl)
        scrollinglbl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        scrollinglbl.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        scrollinglbl.widthAnchor.constraint(equalTo: scrollinglbl.widthAnchor).isActive = true
        scrollinglbl.heightAnchor.constraint(equalTo: scrollinglbl.heightAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
