//
//  aboutusVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class aboutusVC: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "About Us"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(handledone))

        let myWebView:UIWebView = UIWebView(frame: CGRect(x:0, y:0, width: UIScreen.main.bounds.width, height:UIScreen.main.bounds.height))
        myWebView.allowsLinkPreview = true
        
        self.view.addSubview(myWebView)
        
        myWebView.delegate = self
        
        //1. Load web site into my web view
        let myURL = URL(string: "http://www.bhkwise.com/Home/aboutus")
        let myURLRequest:URLRequest = URLRequest(url: myURL!)
        myWebView.loadRequest(myURLRequest)
    }

    func handledone(){
        
        dismiss(animated: true, completion: nil)
    }

}
