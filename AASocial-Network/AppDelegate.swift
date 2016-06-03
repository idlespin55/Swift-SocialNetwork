//
//  AppDelegate.swift
//  AASocial-Network
//
//  Created by Ajmal Ahmady on 6/1/16.
//  Copyright © 2016 FrontierGroup. All rights reserved.
//  FB INTEGRATION: (1) Create a new project in xCode and Firebase
//                  (2) At developers.facebook.com, create a new app, enter xCode project display name and bundle ID,
//                      & create a new product (FB login).  Click yes for 'Client OAuth Login' option
//                  (3) Enter the FB App ID & App Secret in the Firebase/Login&Auth/FB screen
//                  (4) Download the FB SDK, and then copy the Bolts, CoreKit, and LoginKit into your xCode project
//                  (5) To use Firebase: 'Pod Init', enter "pod 'Firebase', '2.3.3'", then 'Pod Install'
//                  (6) Open Info.plist as source code
//                  (7) Copy the following keys in Info.plist: LSApplicationQueriesSchemes, NSAppTransportSecurity, & CFBundleURLTypes
//                  (8) In the project build settings, change Bitcode setting to 'No'
//                  (9) In AppDelegate.swift, import FBSDKCoreKit and FBSDKLoginKit
//                  (10) In didFinishLaunchingWithOptions, send data to FB to see if user is already logged in by entering:
//                      'return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)'
//                  (11) In didBecomeActive, reactivate FB if needed by entering 'FBSDKAppEvents.activateApp()'
//                  (12) Create a new function to pass the application, url, etc to FB: func application
//                      (application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {}
//                  (13) In the VC, import FBSDKCoreKit/FBSDKLonginKit and create IBAction with appropriate code
//                  Useful Video: Part 4
//                  Useful Websites: https://www.firebase.com/docs/ios/guide/login/facebook.html
//                                   https://developers.facebook.com/docs/ios/getting-started


import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch. Check if user is already logged in
        return FBSDKApplicationDelegate.sharedInstance().application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        //Reactivate FB if not already activated
        FBSDKAppEvents.activateApp()
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        //This will open the FB url
        return FBSDKApplicationDelegate.sharedInstance().application(application, openURL: url, sourceApplication: sourceApplication, annotation: annotation)
    }
}