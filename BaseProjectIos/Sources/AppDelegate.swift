//
//  AppDelegate.swift
//  BaseProjectIos
//
//  Created by Junior Margalho on 30/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let homeViewController = HomeViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = homeViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}
