//
//  housingvsLocalityCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class housingvsLocalityCell: UICollectionViewCell {
    
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        setupHousingvsLocalitysconatinerView()
        
    }
    
    
    
    let HousingvsLocalitysconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupHousingvsLocalitysconatinerView(){
        addSubview(HousingvsLocalitysconatinerView)
        HousingvsLocalitysconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        HousingvsLocalitysconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        HousingvsLocalitysconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        HousingvsLocalitysconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
