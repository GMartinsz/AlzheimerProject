//
//  CloudViewController.swift
//  AlzheimerProject
//
//  Created by Caio Azevedo on 26/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import UIKit

class CloudViewController: ViewController {

    @IBOutlet weak var labelSala: UILabel!
    @IBOutlet weak var labelUsuario: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func criarSala(_ sender: Any) {
        
        let user = Cloud.geraAleatorio()
        
        let userList: [Int64] = [user]
        Cloud.saveSala(idSala: Cloud.geraAleatorio(), idUsuario: userList, idCalendario: Cloud.geraAleatorio(), idPerfil: Cloud.geraAleatorio(), idHost: user)
        
    }
    
}
