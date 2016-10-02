//
//  IRepositorioContas.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

protocol IRepositorioContas {
    
    func inserirConta(conta: Conta, callback: @escaping (Error?, String) -> ())
    
    func getConta(idConta: String, callback: @escaping (Conta?, Error?) -> ())
    
    func verificarEmail(email: String, callback: @escaping (Bool?, Error?) -> ())
    
    func verificarEmailFB(email: String, callback: @escaping (Error?, String?) -> ())
    
    func atualizarConta(conta: Conta, callback: @escaping (Error?) -> ())
    
    func inserirItem(idItem: String, idConta: String, callback: @escaping (Error?) -> ())
    
    func encontrarDonoItem(idItem: String, callback: (Conta?, Error?) -> ())
}
