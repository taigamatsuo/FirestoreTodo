//
//  AppDelegate.swift
//  SampleApp-2
//
//  Created by 松尾大雅 on 2020/09/12.
//  Copyright © 2020 litech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?
    
   
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
   
        
     FirestoreService.shared.configure()
        
        return true
    }

}
    
    
    
    
    
    
   
