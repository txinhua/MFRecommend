//
//  AppDelegate.swift
//  MFRecommends
//
//  Created by 唐桂富 on 2020/9/17.
//  Copyright © 2020 Tyrone. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print(reverseWords(s: "the sky is blue") ?? "")
        let list:List =  List()
        list.appendTotail(1)
        list.appendTotail(5)
        list.appendTotail(3)
        list.appendTotail(2)
        list.appendTotail(4)
        list.appendTotail(2)
        var head:ListNode? = partition(list.head, 3)
        printList(head)
        head = removeNthFromEnd(head: head, 2)
        printList(head)
        return true
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

