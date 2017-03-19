//
//  homeAPI.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit
import Alamofire

extension homeVC {
  
    typealias jsonDataType = [String: Any]
  
    func callbannerApi(){
        
        Alamofire.request(home_banner_url)
                  .responseJSON { (response) in
                    
                    if let json = response.result.value {
                        
                        let data = json as! NSArray
                   
                        
                        for i in 0..<data.count{
                            
                            let item = data[i] as! NSDictionary
                         
                            
                            let image = URL(string:item["imageName"] as! String)
                            
                            let imagedata = NSData(contentsOf: image!)
                            
                            let mainImage = UIImage(data: imagedata as! Data)
                            
                            self.imageDatas.append(home_banner.init(imageData: mainImage) )
                          
                            DispatchQueue.main.async(execute: { 
                                self.collectionview.reloadData()
                            })
                        }
                }
        }
    }
}
