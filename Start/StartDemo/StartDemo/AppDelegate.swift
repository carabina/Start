//
//  AppDelegate.swift
//  StartDemo
//
//  Created by Igor Matyushkin on 31.08.2018.
//  Copyright © 2018 Igor Matyushkin. All rights reserved.
//

import UIKit
import Start

@UIApplicationMain
class AppDelegate: UIResponder {
    
    // MARK: Class variables & properties
    
    // MARK: Public class methods
    
    // MARK: Private class methods
    
    // MARK: Initializers
    
    override init() {
        super.init()
    }
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    // MARK: Object variables & properties
    
    var window: UIWindow?
    
    // MARK: Public object methods
    
    // MARK: Private object methods
    
    fileprivate func updateLaunchCounter() {
        Start.launches.increment()
    }
    
    fileprivate func initializeWindow() {
        // Create window
        
        let frameForWindow = UIScreen.main.bounds
        self.window = UIWindow(frame: frameForWindow)
        self.window!.backgroundColor = .white
        self.window!.makeKeyAndVisible()
    }
    
    fileprivate func displayMainScreen() {
        // Display main screen
        
        let mainViewController = MainViewController(nibName: "MainViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: mainViewController)
        self.window!.rootViewController = navigationController
    }
    
}

extension AppDelegate: UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.updateLaunchCounter()
        self.initializeWindow()
        self.displayMainScreen()
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
