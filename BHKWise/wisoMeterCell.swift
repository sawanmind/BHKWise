//
//  wisoMeterCell.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//
import UIKit

class wisoMeterCell: UICollectionViewCell {
    
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        setupWisoMeterconatinerView()
        
    }
    
    let RatingSnapshotsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupRatingSnapshotsconatinerView(){
        addSubview(RatingSnapshotsconatinerView)
        RatingSnapshotsconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        RatingSnapshotsconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 40).isActive = true
        RatingSnapshotsconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        RatingSnapshotsconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    let HousingVitalsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupHousingVitalsconatinerView(){
        addSubview(HousingVitalsconatinerView)
        HousingVitalsconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        HousingVitalsconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        HousingVitalsconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        HousingVitalsconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
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
    
    
    
    
    
    let TopIndicatorssconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupTopIndicatorssconatinerView(){
        addSubview(TopIndicatorssconatinerView)
        TopIndicatorssconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        TopIndicatorssconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        TopIndicatorssconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        TopIndicatorssconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
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
    
    
    let KeyInsightssconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupKeyInsightssconatinerView(){
        addSubview(KeyInsightssconatinerView)
        KeyInsightssconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        KeyInsightssconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        KeyInsightssconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        KeyInsightssconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    let DetailedRatingsconatinerView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupDetailedRatingsconatinerView(){
        addSubview(DetailedRatingsconatinerView)
        DetailedRatingsconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        DetailedRatingsconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        DetailedRatingsconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        DetailedRatingsconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    let WisoMeterconatinerView : UIView = {
        let view = UIView()
        //  view.backgroundColor = UIColor.cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    func setupWisoMeterconatinerView(){
        addSubview(WisoMeterconatinerView)
        WisoMeterconatinerView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        WisoMeterconatinerView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        WisoMeterconatinerView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        WisoMeterconatinerView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
