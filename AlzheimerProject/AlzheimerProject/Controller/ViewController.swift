//
//  ViewController.swift
//  AlzheimerProject
//
//  Created by Guilherme Martins Dalosto de Oliveira on 16/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {
    
    let UserNotification = Notification()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNotification.requestNotificationAuthorization()
    
        
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func button(_ sender: UIButton) {
        UserNotification.notification()
    }
    
   
    
    
    
    
    

}
