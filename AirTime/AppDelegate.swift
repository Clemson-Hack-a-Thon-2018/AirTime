//
//  AppDelegate.swift
//  Developer Samples
//
//  Created by Gary Baldwin on Oct 1, 2018.
//  Copyright © 2018 Dynepic, Inc. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let cid = "iok-cid-016bdbdafeaec0d094546e5c989c1e28c34810ea4e6b5922"
    let cse = "iok-cse-bfe928f92578946eae8d7011d4023ca339aa4acc3eaf2fd6"
    let redirectURI = "airtime://redirect"
    let env = "SANDBOX"
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        let hvc: HomeViewController = HomeViewController()
        
        PPManager.sharedInstance.addUserListener(handler:hvc.userListener(_:_:))
        PPManager.sharedInstance.configure(env:env, clientId:cid, secret:cse, andRedirectURI:redirectURI)
        
        return true
    }
    
    func application(_ application: UIApplication, handleOpen url: URL) -> Bool {
        PPManager.sharedInstance.handleOpenURL(url:url)
        return true
    }
}

