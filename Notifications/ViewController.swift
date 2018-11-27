//
//  ViewController.swift
//  Notifications
//
//  Created by Kiya Persad on 27/11/2018.
//  Copyright © 2018 Kiya Persad. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBAction func action(_ sender: UIButton) {
        
        let content = UNMutableNotificationContent()
        content.title = "Santa has arrived in Barcelona!"
        content.body = "Click here to see what's happened to him in Spain "
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

