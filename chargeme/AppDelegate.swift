//
//  AppDelegate.swift
//  chargeme
//
//  Created by Paul Okuda on 3/4/15.
//  Copyright (c) 2015 Paul Okuda. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
//        [Parse enableLocalDatastore];
        
        // Initialize Parse.
//        [Parse setApplicationId:"I7unmJdF7zHeB0erTmiZG1N7VMx7yU27FvjCvHTv"
//        clientKey:"VdtIQrnF9j1ybeiiPfhN0mHm7vYBVSNETCqJnbO5"];
        
        // [Optional] Track statistics around application opens.
//        [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
//        // Override point for customization after application launch.
//        FBLoginView.self
//        FBProfilePictureView.self


        Parse.setApplicationId("I7unmJdF7zHeB0erTmiZG1N7VMx7yU27FvjCvHTv", clientKey: "VdtIQrnF9j1ybeiiPfhN0mHm7vYBVSNETCqJnbO5")
        
        //Tests to see if parse is working
        var object = PFObject(className: "TestClass")
        object.addObject("Banana", forKey: "favoriteFood")
        object.addObject("Chocolate", forKey: "favoriteIceCream")
        object.saveInBackground()
        
        
//        // [Optional] Power your app with Local Datastore. For more info, go to
//        // https://parse.com/docs/ios_guide#localdatastore/iOS
//        [Parse enableLocalDatastore];
//        
//        // Initialize Parse.
//        [Parse setApplicationId:@"I7unmJdF7zHeB0erTmiZG1N7VMx7yU27FvjCvHTv"
//        clientKey:@"VdtIQrnF9j1ybeiiPfhN0mHm7vYBVSNETCqJnbO5"];
//        
//        // [Optional] Track statistics around application opens.
//        [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
//        
//        // ...

    return true
    }
    
    
    func application(application: UIApplication, openURL url: NSURL, sourceApplication: NSString?, annotation: AnyObject) -> Bool {
        
//        var wasHandled:Bool = FBAppCall.handleOpenURL(url, sourceApplication: sourceApplication)
//        return wasHandled
        
        return true;
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
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

