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
    
    init(email: String, senha: String, itens: Array<Int>, localizacao: CLLocation) {
        self.id = NSUUID().uuidString
        self.email = email
        self.senha = senha
        self.itens = itens
        self.localizacao = localizacao
    }
    
    func contaFB(id: Int, email: String, senha: String, itens: Array<Int>, localizacao: CLLocation) -> Conta {
        
        //Contas do Facebook não tem senha
        return Conta(email: email, senha: "NaoTemSenha", itens: itens, localizacao: localizacao)
    }
    
    
    

    
}
