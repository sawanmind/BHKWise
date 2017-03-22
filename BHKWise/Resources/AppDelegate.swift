//
//  AppDelegate.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        self.window?.rootViewController = mainVC()
        
        
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.barTintColor = UIColor.navigationColor
        navigationBarAppearace.isTranslucent = false
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white]
        navigationBarAppearace.shadowImage = UIImage()
        UIApplication.shared.statusBarStyle = .lightContent
        
        application.statusBarStyle = .lightContent

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    
    }

    func applicationWillTerminate(_ application: UIApplication) {
    
    }


}

