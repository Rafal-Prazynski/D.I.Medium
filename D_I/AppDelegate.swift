//
//  AppDelegate.swift
//  D_I
//
//  Created by Rav on 12/03/2020.
//  Copyright © 2020 Rav. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = createFirstViewController()
        window?.makeKeyAndVisible()
        return true
    }
    
    private func createFirstViewController() -> UINavigationController {
        let firstVC = FirstViewController()
        firstVC.inject(container: FirstViewInjector())
        return UINavigationController(rootViewController: firstVC)
    }
}
