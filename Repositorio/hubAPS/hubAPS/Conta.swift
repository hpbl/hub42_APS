//
//  Conta.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation

class Conta{
    
    var id : String
    var email : String
    var itens : Array<Int>
    var localizacao : CLLocation
    
    init(id: Int, email: String, itens: Array<Int>, localizacao: CLLocation) {
        self.id = NSUUID().uuidString
        self.email = email
        self.itens = itens
        self.localizacao = localizacao
    }
    
}
