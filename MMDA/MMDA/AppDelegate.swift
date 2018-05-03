//
//  AppDelegate.swift
//  MMDA
//
//  Created by Michael Pine on 4/7/18.
//  Copyright © 2018 SparrowHawk. All rights reserved.
//

import UIKit
import GoogleMaps
import SciChart

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // Note! This is just an example.
        // The real License Contract is found by following steps above
        GMSServices.provideAPIKey("AIzaSyCLSO13ug703m2_duZvPswGvTBOyVp-Vtg")
        
        let licencing:String = "<LicenseContract>" +
            "<LicenseContract>" +
            "<Customer>mpine625@gmail.com</Customer>" +
            "<OrderId>Trial</OrderId>" +
            "<LicenseCount>1</LicenseCount>" +
            "<IsTrialLicense>true</IsTrialLicense>" +
            "<SupportExpires>05/22/2018 00:00:00</SupportExpires>" +
            "<ProductCode>SC-IOS-2D-ENTERPRISE-SRC</ProductCode>" +
        "<KeyCode>bf1baf7978af049048a021deeaec3bb0b6a1cc0675381d463f3c310cc013496e18c066529dc6089d07dc33489f7c11b66c198380f3d8722bd0a06c1f4793a953c6da39feb011d3499e4d94c73f849dc07ce13f3efe251a207dbaa9fc1dd0f4f6eea0d1b67c631e2db5c6443d26789e767df1b6ab2bb8885f34c33d72582d3da4755cb4e5927f7aa2d76498b7108a52e8b43808e724c3839feda3a628db77ad3729fc836b7bae9d56</KeyCode>" +
        "</LicenseContract>"
        
        SCIChartSurface.setRuntimeLicenseKey(licencing)
        
        return true
    }

    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

