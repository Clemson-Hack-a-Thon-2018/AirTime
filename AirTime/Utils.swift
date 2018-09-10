//
//  callURL.swift
//  AirTime
//
//  Created by Joshua Paulsen on 9/10/18.
//  Copyright © 2018 kontakt.io. All rights reserved.
//

import Foundation
import UIKit
import StoreKit

public class Utils {
    static func openOrDownloadPlayPortal() {
        
        let storeProductVC = SKStoreProductViewController()
        let playPortalURL = URL(string: "playportal://")!
        
        
        if UIApplication.shared.canOpenURL(playPortalURL) {
            UIApplication.shared.openURL(playPortalURL)
        }
        else {
            print("Cannot Open")
        }
    }
}
