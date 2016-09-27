//
//  Conta.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class Conta{

    var email : String
    var senha : String
    var itens : Array<Item>
    var localizacao : String
    
    init(email: String, senha: String, itens: Array<Item>, localizacao: String) {
        self.email = email
        self.senha = senha
        self.itens = itens
        self.localizacao = localizacao
    }
    
}
