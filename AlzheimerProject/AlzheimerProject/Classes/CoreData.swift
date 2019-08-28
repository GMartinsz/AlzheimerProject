//
//  CoreData.swift
//  AlzheimerProject
//
//  Created by Pedro Paulo Feitosa Rodrigues Carneiro on 27/08/19.
//  Copyright © 2019 Guilherme Martins Dalosto de Oliveira. All rights reserved.
//

import Foundation
import CoreData
import UIKit

let appDelegate = UIApplication.shared.delegate as! AppDelegate
let managedObjectContext = appDelegate.persistentContainer.viewContext

class CoreDataBase {
    
    private init(){
        
    }
    
    static var coreData = CoreDataBase()
    
    //Função responsável por criar a sala!
    static func createSala(){
        
        let x = 1
    }
    
    
    
}
