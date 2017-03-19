//
//  TopSearchBarView.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit

class TopSearchBarView: UIView, UISearchBarDelegate {
    
    override init(frame: CGRect){
        
        super.init(frame: frame)
        backgroundColor = UIColor.clear
        addSubview(searchbar)
        setupSearchbar()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let searchbar: UISearchBar = {
        let bar = UISearchBar()
        bar.enablesReturnKeyAutomatically = true
        bar.isTranslucent = false
        bar.translatesAutoresizingMaskIntoConstraints = false
        return bar
    }()
    
    func setupSearchbar(){
        
        searchbar.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        searchbar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        searchbar.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        searchbar.heightAnchor.constraint(equalToConstant: 36).isActive = true
        
    }
}
