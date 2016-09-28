//
//  IRepositorioContas.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

protocol IRepositorioContas {
    
    
    func inserirConta(conta: Conta, callback: (Error?) -> ())
    
    func getConta(idConta: String, callback: (Conta?, Error?) -> ())
    
    func verificarEmail(email: String, callback: (Bool?, Error?) -> ())
    
    func atualizarConta(conta: Conta, callback: (Error?) -> ())
    
    func inserirItem(idItem: String, conta: Conta, callback: (Error?) -> ())

    func encontrarDonoItem(idItem: String, callback: (Conta?, Error?) -> ())
}
