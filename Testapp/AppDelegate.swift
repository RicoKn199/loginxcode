//
//  AppDelegate.swift
//  Testapp
//
//  Created by rikokurniawan on 5/12/18.
//  Copyright © 2018 rikokurniawan. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
        -> Bool {
        FirebaseApp.configure()
        return true
    }


}

