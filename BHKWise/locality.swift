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
   
//    let a = UIDevice.current.identifierForVendor!.uuidString
//    print(a)

    func callAPI(){
        let parameters = "userid"
        Alamofire.request(topLocalityUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
            .responseJSON { (response) in
               
                if let json = response.result.value {
                    
                    let data = json as! NSArray
                    
                    print(data)
                }
               
        }
    }
    
    
}
