//
//  ContaNativa.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit
import CoreLocation

class ContaNativa: Conta {

    var senha : String
    
    init(id: Int, senha: String,  email: String, itens: Array<Int>, localizacao: CLLocation){
        super.init(id: id, email: email, itens: itens, localizacao: localizacao)
        self.senha = senha;
    }
    
}
