//
//  PerfilViewController.swift
//  AlzheimerProject
//
//  Created by Guilherme Martins Dalosto de Oliveira on 20/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {
    
    
    @IBOutlet weak var profilePhoto: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPhoto()
        // Do any additional setup after loading the view.
    }
    

    func setPhoto(){
        profilePhoto.image = UIImage(named: "sample")
        profilePhoto.layer.borderWidth = 1
        profilePhoto.layer.masksToBounds = false
        profilePhoto.layer.cornerRadius = profilePhoto.frame.height/2
        profilePhoto.clipsToBounds = true
        
    }
}
