//
//  UserInfo.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 29/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class ContaAtual {
    
    init(idConta: String) {
        self.idConta = idConta
    }
    
    var idConta: String? {
        get {
            let returnValue = UserDefaults.standard.string(forKey: "idUsuario")
                return returnValue

            
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "idUsuario")
            UserDefaults.standard.synchronize()
        }
    }
    
}
