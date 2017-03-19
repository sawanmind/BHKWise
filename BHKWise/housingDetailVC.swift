//
//  housingDetailVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class housingDetailVC: UICollectionViewController, UICollectionViewDelegateFlowLayout  {
    
    let titlebar = "MGF Vilas"
    let subtitle = "NH8-MG Road GURUGRAM"
    
    let ratingSnapshotCellId = "ratingSnapshotCellId"
    let housingVitalCellId = "housingVitalCellId"
    let housingvsLocalityCelId = "housingvsLocalityCell"
    let topIndicatorsCellId = "topIndicatorsCell"
    let nearbyHousingCellId = "nearbyHousingCell"
    let keyInsightsCellId = "keyInsightsCell"
    let detailRatingsCellId = "detailRatingsCell"
    let wisoMeterCellId = "wisoMeterCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation()
        setupNavigationtitleSubtitle()
        setupcollectionView()
    }
    
    func setupcollectionView(){
        
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.scrollDirection = .horizontal
            flowLayout.minimumLineSpacing = 0
            
        }
        
        collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        
        collectionView?.register(ratingSnapshotCell.self, forCellWithReuseIdentifier: ratingSnapshotCellId)
        collectionView?.register(housingVitalsCell.self, forCellWithReuseIdentifier: housingVitalCellId)
        collectionView?.register(housingvsLocalityCell.self, forCellWithReuseIdentifier: housingvsLocalityCelId)
        collectionView?.register(topIndicatorsCell.self, forCellWithReuseIdentifier: topIndicatorsCellId)
        collectionView?.register(nearbyHousingCell.self, forCellWithReuseIdentifier: nearbyHousingCellId)
        collectionView?.register(keyInsightsCell.self, forCellWithReuseIdentifier: keyInsightsCellId)
        collectionView?.register(detailRatingsCell.self, forCellWithReuseIdentifier: detailRatingsCellId)
        collectionView?.register(wisoMeterCell.self, forCellWithReuseIdentifier: wisoMeterCellId)
        
        
        collectionView?.isPagingEnabled = true
    }
    
    func setupNavigation(){
        view.backgroundColor =  UIColor.navigationColor
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let img = UIImage(named: "myaccount")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(handlenotification))
    }
    
    
    func handlenotification(){
        
        let new = notificationVC()
        self.present(UINavigationController(rootViewController: new), animated: true, completion: nil)
    }
    func setupNavigationtitleSubtitle(){
        
        
        let titleBgView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 44))
        
        let titlename = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 24))
        titlename.text = titlebar
        titlename.textColor = UIColor.white
        titlename.textAlignment = .center
        titlename.font = UIFont(name: ".SF NS Display", size: 24)
        
        let titlesubtitle = UILabel(frame: CGRect(x: 0, y: 25, width: 300, height: 12))
        titlesubtitle.text = subtitle
        titlesubtitle.textColor = UIColor.white
        titlesubtitle.font = UIFont(name: ".SF NS Display", size: 12)
        titlesubtitle.textAlignment = .center
        
        titleBgView.addSubview(titlename)
        titleBgView.addSubview(titlesubtitle)
        navigationItem.titleView = titleBgView
        
        setupsheaderBarView()
    }
    
    
    lazy var headerBarView : housingheaderView  = {
        let view = housingheaderView()
        view.housingdetailVC = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private func setupsheaderBarView(){
        view.addSubview(headerBarView)
        
        headerBarView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        headerBarView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        headerBarView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        headerBarView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        
        headerBarView.horizontalBarLeftAnchorConstraint?.constant = scrollView.contentOffset.x / 8
        
    }
    
    func scrollToMenuIndex(_ menuIndex: Int){
        
        let indexPath = IndexPath(item: menuIndex, section: 0)
        collectionView?.scrollToItem(at: indexPath, at: UICollectionViewScrollPosition(), animated: true)
        
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        
        let index = targetContentOffset.pointee.x / view.frame.width
        
        let indexpath = NSIndexPath(item: Int(index), section: 0)
        headerBarView.collectioView.selectItem(at: indexpath as IndexPath, animated: true, scrollPosition: UICollectionViewScrollPosition())
    }
    
}


extension housingDetailVC {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        
        switch indexPath.item {
        case 0:
            return collectionView.dequeueReusableCell(withReuseIdentifier: ratingSnapshotCellId, for: indexPath)
        case 1:
            return collectionView.dequeueReusableCell(withReuseIdentifier: housingVitalCellId, for: indexPath)
        case 2:
            return collectionView.dequeueReusableCell(withReuseIdentifier: housingvsLocalityCelId, for: indexPath)
        case 3:
            return collectionView.dequeueReusableCell(withReuseIdentifier: topIndicatorsCellId, for: indexPath)
        case 4:
            return collectionView.dequeueReusableCell(withReuseIdentifier: nearbyHousingCellId, for: indexPath)
        case 5:
            return collectionView.dequeueReusableCell(withReuseIdentifier: keyInsightsCellId, for: indexPath)
        case 6:
            return collectionView.dequeueReusableCell(withReuseIdentifier: detailRatingsCellId, for: indexPath)
        case 7:
            return collectionView.dequeueReusableCell(withReuseIdentifier: wisoMeterCellId, for: indexPath)
            
        default:
            fatalError("error in cell")
        }
        
        //  return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}








extension housingDetailVC {
    
    func handleDRlocation(){
        
        let new = DRlocationVC()
        self.navigationController?.pushViewController(new, animated: false)
    }
    
    
    func handleDRbuildquality(){
        let new = DRbuildqualityVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    
    func handleDRvalueformoney(){
        let new = DRvalueformoneyVC()
        self.navigationController?.pushViewController(new, animated: false)
        
    }
    
    func hanldeDRinterior(){
        let new = DRinteriorVC()
        self.navigationController?.pushViewController(new, animated: false)
        
    }
    
    func handleDRsmart(){
        let new = DRsmartVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    func hanldeDRqualityoflife(){
        let new = DRqualityoflifeVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    
    
    
    
    
    func handleKIlocation(){
        
        let new = KIlocationVC()
        self.navigationController?.pushViewController(new, animated: false)
    }
    
    
    func handleKIbuildquality(){
        let new = KIbuildqualityVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    
    func handleKIvalueformoney(){
        let new = KIvalueformoneyVC()
        self.navigationController?.pushViewController(new, animated: false)
        
    }
    
    func hanldeKIinterior(){
        let new = KIInteriorVC()
        self.navigationController?.pushViewController(new, animated: false)
        
    }
    
    func handleKIsmart(){
        let new = KIsmartVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    func hanldeKIqualityoflife(){
        let new = KIqualityoflifeVC()
        self.navigationController?.pushViewController(new, animated: false)
        
        
    }
    
}
