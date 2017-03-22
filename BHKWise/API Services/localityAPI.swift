//
//  locality.swift
//  BHKWise
//
//  Created by Sawkan on 3/19/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit
import Alamofire


extension localityVC {
   
    func calllocalityAPI(){
        
        Alamofire.request(topLocalityUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { (response) in
                
                if let json = response.result.value {
                    
                    let data = json as! NSArray
                    
                    for i in 22..<data.count {
                        
                        let item = data[i] as! NSDictionary
                        
                         let locality = item["Locality"] as! String
                         let city = item["City"] as! String
                         let housingRating = item["HousingRating"] as Any
                         let buyPrice = item["BuyPrice"] as Any
                        
                         let rentPrice = item["RentPrice"] as Any
                         let localityStatusPts = item["LocalityStatusPts"] as Any
                        
                        self.localityData.append(top_locality.init(titlelbl: locality, city:city , HousingRating:housingRating, BuyPrice:(buyPrice as AnyObject).roundToPlace(2),RentPrice:rentPrice,LocalityStatusPts:localityStatusPts))
                        
                        print(self.localityData)
                        
                        DispatchQueue.main.async(execute: {
                            self.collectionView?.reloadData()
                        })
                        
                        
                    }
                    
                    
                }
                
        }
    }
    
    
}
