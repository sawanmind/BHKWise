//
//  notificationVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class notificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       view.backgroundColor = UIColor.navigationColor
        navigationItem.title = "Notification"
        
        let img = UIImage(named: "cancel")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(hanldecancel))
    }

    func hanldecancel(){
        
        dismiss(animated: true, completion: nil)
    }
}
