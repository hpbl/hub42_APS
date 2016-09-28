//
//  Fachada.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import UIKit

class Fachada {
    
    private init() {
        
    }
    
    /*Singleton pattern implementation*/
    private static var _instance: Fachada?
    static var getInstance: Fachada {
        get {
            if self._instance == nil {
                self._instance = Fachada()
            }
            return self._instance!
        }
    }
    
    func efetuarLoginFB() {
        
    }
    
    func cadastrarItem(foto:UIImage, nome:String, conta:Conta) {
        
    }
    
}
