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

    var email : String
    var senha : String
    var itens : Array<Item>
    var localizacao : CLLocation
    
    init(email: String, senha: String, itens: Array<Item>, localizacao: CLLocation) {
        self.email = email
        self.senha = senha
        self.itens = itens
        self.localizacao = localizacao
    }
    
    func conta(email: String, senha: String, localizacao: CLLocation) {
        self.email = email
        self.senha = senha
        self.localizacao = localizacao
        self.itens = []
    }
    
    func instanciarContaFB(email: String) {
        self.email = email
        //TODO: descobrir qual a lógica dessa função
    }
    
    
    

    
}
