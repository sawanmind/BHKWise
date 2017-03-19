//
//  nearbyHousingCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//
import UIKit

class nearbyHousingCell: UICollectionViewCell {
    
    
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        setupNearbyHousingsconatinerView()
        
    }
    
    
    
    let NearbyHousingsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupNearbyHousingsconatinerView(){
        addSubview(NearbyHousingsconatinerView)
        NearbyHousingsconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        NearbyHousingsconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        NearbyHousingsconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        NearbyHousingsconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
