//
//  AppDelegate.swift
//  SkinnedUI_SwiftVersion
//
//  Created by junge on 15/3/29.
//  Copyright (c) 2015年 junge. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController : UITabBarController?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame:UIScreen.mainScreen().bounds);
        self.tabBarController = UITabBarController();
        var vcClasses  = [FirstViewController(nibName: "FirstViewController", bundle: nil), SecondViewController(nibName: "SecondViewController", bundle: nil), ThirdViewController(nibName: "ThirdViewController", bundle: nil),  SettingViewController(nibName: "SettingViewController", bundle: nil)];
        
        var titles = ["first", "second", "third", "setting"];
        
        
        var navArray = [UINavigationController]();
         var i:Int = 0;
        for vc in vcClasses
        {
            var navigationController = UINavigationController(rootViewController: vc);
            vc.title = titles[i];
            navArray.append(navigationController);
            ++i;
        }
        
        self.tabBarController?.viewControllers = navArray;
        self.tabBarController?.selectedIndex = 0;
        self.window?.rootViewController = self.tabBarController;
        self.window?.makeKeyAndVisible();
        
//        ThemeManager.sharedInstance.setColorString("hello");
//        ThemeManager.sharedInstance.setColorString("hello");
        return true
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

