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
<<<<<<< HEAD
    
    @IBOutlet weak var feedView: UITableView!
    @IBOutlet weak var segmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UserNotification.requestNotificationAuthorization()
        
        
        
        
    }

    
    
    
    
    
    @IBAction func segmentedAction(_ sender: UISegmentedControl) {
        switch (segmented.selectedSegmentIndex){
        case 0:
            print("first")
        case 1:
            print("second")
        default:
            print("default")
        }
    }
    
    
    
    
    
    
    
    
    
=======
    var userID = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        UserNotification.requestNotificationAuthorization()
        recuperarId()
    }


>>>>>>> Cloud
    @IBAction func button(_ sender: UIButton) {
        UserNotification.notification()
    }
    
    
    //Busca o ID Único do ICLOUD e faz o tratamento de error
    func iCloudUserIDAsync(complete: @escaping (_ instance: CKRecord.ID?, _ error: NSError?) -> ()) {
        let container = CKContainer.default()
        container.fetchUserRecordID() {
            recordID, error in
            if error != nil {
                print(error!.localizedDescription)
                complete(nil, error as NSError?)
            } else {
                //print("fetched ID \(recordID?.recordName ?? "")")
                complete(recordID, nil)
            }
        }
    }
    
    func recuperarId(){
        //Verifica se está logado no icloud
        if FileManager.default.ubiquityIdentityToken != nil {
            
            //Chamada da funçao para recuperar o ID
            iCloudUserIDAsync { (recordID: CKRecord.ID?, error: NSError?) in
                self.userID = recordID?.recordName ?? "Fetched iCloudID was nil"
                print("UserID = \(self.userID)")
            }
            
        } else {
            
            print("iCloud Unavailable")
            
            //Pede que o usuário abra as configurações para que faça o login no icloud
            func openSettings(alert: UIAlertAction!) {
                if let url = URL.init(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            
            let alert = UIAlertController(title: "Login no icloud",
                                          message: "We identify that you are not log in to icloud. Please log in to save your data , ",
                                          preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Open Settings",
                                          style: UIAlertAction.Style.default,
                                          handler: openSettings))
            alert.addAction(UIAlertAction(title: "Cancel",
                                          style: UIAlertAction.Style.destructive,
                                          handler: nil))
            
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    

}

