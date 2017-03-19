//
//  homeVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class homeVC: UIViewController, UICollectionViewDelegateFlowLayout{
    
    
    var imageDatas = [home_banner]()
    
    let home_banner_url = "http://bhkwise.com/BHKwiseApi/UserHomeapi"
    
    var collectionview:UICollectionView!
    var headerView:CustomHeaderView!
    var headerHeightConstraint:NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callbannerApi()
        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        setUpHeader()
        setUpcollectionview()
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        let img = UIImage(named: "notification")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(handlenotification))
    }
    
    func handlenotification(){
        
        let new = notificationVC()
        self.present(UINavigationController(rootViewController: new), animated: true, completion: nil)
    }
    
    
    func setUpcollectionview() {
        let flowlayout = UICollectionViewFlowLayout()
       
        
        collectionview = UICollectionView(frame: .zero, collectionViewLayout: flowlayout)
        collectionview.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        
        collectionview.showsVerticalScrollIndicator = false
        
        
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(collectionview)
        
        let constraints:[NSLayoutConstraint] = [
            collectionview.topAnchor.constraint(equalTo: headerView.bottomAnchor,constant: 3.5),
            collectionview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionview.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        collectionview.register(homecustomCell.self, forCellWithReuseIdentifier: "cell")
    
        collectionview.dataSource = self
        collectionview.delegate = self
    }
    
    func setUpHeader() {
        headerView = CustomHeaderView(frame: CGRect.zero)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headerView)
        
        headerHeightConstraint = headerView.heightAnchor.constraint(equalToConstant: 300)
        headerHeightConstraint.isActive = true
        
        let constraints:[NSLayoutConstraint] = [
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    func animateHeader() {
        self.headerHeightConstraint.constant = 300
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.5, options: UIViewAnimationOptions(), animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
}

extension homeVC:UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 {
            self.headerHeightConstraint.constant += abs(scrollView.contentOffset.y)
            
            headerView.incrementArticleAlpha(self.headerHeightConstraint.constant)
        } else if scrollView.contentOffset.y > 0 && self.headerHeightConstraint.constant >= 270 {
            self.headerHeightConstraint.constant -= scrollView.contentOffset.y/100
            
            if self.headerHeightConstraint.constant < 270 {
                self.headerHeightConstraint.constant = 270
            }
        }
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if self.headerHeightConstraint.constant > 300 {
            animateHeader()
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if self.headerHeightConstraint.constant > 300 {
            animateHeader()
        }
    }
}
extension homeVC:UICollectionViewDelegate {
    
}


extension homeVC:UICollectionViewDataSource {
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageDatas.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! homecustomCell
      
    //  let image = UIImage(named: imageDatas[indexPath.item])
        
        cell.blockImg.image = imageDatas[indexPath.item].imageData
        return cell
    }

}



class homecustomCell: UICollectionViewCell {
    override init(frame: CGRect){
        
        super.init(frame: frame)
        
        setupView()
    }
    
    
    let blockView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 2
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        return view
    }()
    

    func setuphomeblockImg(){
        
        blockView.topAnchor.constraint(equalTo: self.topAnchor,constant: 7).isActive = true
        blockView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        blockView.widthAnchor.constraint(equalTo: self.widthAnchor,constant: -7).isActive = true
        blockView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    
    let blockImg : UIImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 2
        view.layer.masksToBounds = true
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 70/255, green: 191/255, blue: 81/255, alpha: 1)
        return view
    }()
    func setupblockImg(){
        
        blockImg.centerYAnchor.constraint(equalTo: blockView.centerYAnchor).isActive = true
        blockImg.centerXAnchor.constraint(equalTo: blockView.centerXAnchor).isActive = true
        blockImg.widthAnchor.constraint(equalTo: blockView.widthAnchor,constant: -7).isActive = true
        blockImg.heightAnchor.constraint(equalTo: blockView.heightAnchor,constant: -7).isActive = true
    }
    
    

    
    func setupView(){
        
        
        addSubview(blockView)
        setuphomeblockImg()
        blockView.addSubview(blockImg)
        setupblockImg()
     
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
  
}



