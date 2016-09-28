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
    var senha : String
    var itens : Array<Int>
    var localizacao : CLLocation
    
    init(id: String, email: String, senha: String, itens: Array<Int>, localizacao: CLLocation) {
        self.id = id
        self.email = email
        self.senha = senha
        self.itens = itens
        self.localizacao = localizacao
    }
    
    init(email: String, senha: String, itens: Array<Int>, localizacao: CLLocation) {
        self.id = NSUUID().uuidString
        self.email = email
        self.senha = senha
        self.itens = itens
        self.localizacao = localizacao
    }
    
}
