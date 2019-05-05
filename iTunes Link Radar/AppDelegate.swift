//
//  AppDelegate.swift
//  iTunes Link Radar
//
//  Created by John Brayton on 5/5/19.
//  Copyright © 2019 John Brayton. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let linkListViewController = ViewController()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = UINavigationController(rootViewController: linkListViewController)
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

