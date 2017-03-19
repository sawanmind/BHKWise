//
//  mainVC
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

class mainVC: UITabBarController , UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        view.backgroundColor = UIColor.navigationColor
        let flowlayout = UICollectionViewFlowLayout()
        let home = homeVC()
        let homeimg = UIImage(named: "home")
        home.tabBarItem = UITabBarItem(title: "Home", image: homeimg, tag: 0)
        
        let localityimg = UIImage(named: "locality")
        let locality = localityVC(collectionViewLayout: flowlayout)
        locality.tabBarItem = UITabBarItem(title: "Locality", image: localityimg, tag: 1)
       
        
        let housingimg = UIImage(named: "housing")
        let housing = housingVC(collectionViewLayout: flowlayout)
        housing.tabBarItem = UITabBarItem(title: "Housing", image: housingimg, tag: 2)
        
        let more = moreVC()
        more.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        
        let viewControllerList = [ home, locality, housing , more]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
    
}

