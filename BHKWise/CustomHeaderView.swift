//
//  CustomHeaderView.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class CustomHeaderView: UIView {
    
    var imageView:UIImageView!
    
    var bgColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)
    
    var titletext:UILabel!
    var subtitletext: UILabel!
    var searchview: UIView!
    var searchlbl: UILabel!
    var searchimg: UIImageView!
    
    
    
    override init(frame:CGRect) {
        
        super.init(frame: frame)
        setUpView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        self.backgroundColor = UIColor.white
        imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(imageView)
        let constraints:[NSLayoutConstraint] = [
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            ]
        NSLayoutConstraint.activate(constraints)
        
        imageView.image = UIImage(named: "gurgaon")
        imageView.contentMode = .scaleAspectFill
        
        titletext = UILabel()
        titletext.font = UIFont(name: "AvenirNext-Medium", size: 28)
        titletext.textAlignment = .center
        titletext.textColor = UIColor.white
        titletext.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(titletext)
        
        let titletextConstraints:[NSLayoutConstraint] = [
            titletext.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titletext.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -80),
            titletext.widthAnchor.constraint(equalTo: titletext.widthAnchor),
            titletext.heightAnchor.constraint(equalToConstant: 40)
        ]
        NSLayoutConstraint.activate(titletextConstraints)
        
        titletext.text = "Reality.Review.Rating"
        
        
        
        
        
        subtitletext = UILabel()
        subtitletext.font = UIFont(name: "AvenirNext-Medium", size: 16)
        subtitletext.textAlignment = .center
        subtitletext.textColor = UIColor.white
        subtitletext.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subtitletext)
        
        let subtitletextConstraints:[NSLayoutConstraint] = [
            subtitletext.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subtitletext.centerYAnchor.constraint(equalTo: titletext.bottomAnchor, constant: 15),
            subtitletext.widthAnchor.constraint(equalTo: subtitletext.widthAnchor),
            subtitletext.heightAnchor.constraint(equalToConstant: 26)
        ]
        NSLayoutConstraint.activate(subtitletextConstraints)
        
        subtitletext.text = "Simplified Home Options"
        
        
        
        
        
        
        
        
        searchview = UIView()
        searchview.layer.cornerRadius = 23
        searchview.layer.masksToBounds = true
        searchview.backgroundColor = UIColor.white
        searchview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(searchview)
        
        let searchviewConstraints:[NSLayoutConstraint] = [
            searchview.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            searchview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15),
            searchview.widthAnchor.constraint(equalTo: self.widthAnchor,constant: -24),
            searchview.heightAnchor.constraint(equalToConstant: 46)
        ]
        NSLayoutConstraint.activate(searchviewConstraints)
        
        
        
        
        
        
        searchlbl = UILabel()
        searchlbl.font = UIFont(name: "AvenirNext-Medium", size: 12)
        searchlbl.text = "Search locality or housing"
        searchlbl.textAlignment = .center
        searchlbl.textColor = UIColor(red: 164/255, green: 164/255, blue: 164/255, alpha: 1)
        searchlbl.translatesAutoresizingMaskIntoConstraints = false
        searchview.addSubview(searchlbl)
        
        let searchlblConstraints:[NSLayoutConstraint] = [
            searchlbl.centerXAnchor.constraint(equalTo: searchview.centerXAnchor),
            searchlbl.centerYAnchor.constraint(equalTo: searchview.centerYAnchor),
            searchlbl.widthAnchor.constraint(equalTo: self.widthAnchor),
            searchlbl.heightAnchor.constraint(equalToConstant: 15)
        ]
        NSLayoutConstraint.activate(searchlblConstraints)
        
        
        searchimg = UIImageView()
        searchimg.translatesAutoresizingMaskIntoConstraints = false
        searchimg.image = UIImage(named: "search")
        searchimg.contentMode = .scaleAspectFit
        searchview.addSubview(searchimg)
        let searchimgConstraints:[NSLayoutConstraint] = [
            searchimg.leftAnchor.constraint(equalTo: searchview.leftAnchor,constant: 10),
            searchimg.centerYAnchor.constraint(equalTo: searchview.centerYAnchor),
            searchimg.widthAnchor.constraint(equalToConstant: 25),
            searchimg.heightAnchor.constraint(equalToConstant: 25)
        ]
        NSLayoutConstraint.activate(searchimgConstraints)
        
        
        
    }
    func incrementArticleAlpha(_ offset: CGFloat) {
        if self.titletext.alpha <= 1 {
            let alphaOffset = max((offset - 65)/85, 0)
            self.titletext.alpha = alphaOffset
        }
    }
    
}
