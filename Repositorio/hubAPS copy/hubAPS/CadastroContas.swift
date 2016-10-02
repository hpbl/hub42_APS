//
//  CadastroContas.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class CadastroContas {

    init(repositorio:IRepositorioContas) {
        self.repositorio = repositorio
    }
    
    var repositorio : IRepositorioContas
    
    func verificarEmail(email: String, callback: @escaping (Bool?, Error?) -> ()){
        self.repositorio.verificarEmail(email: email, callback: callback)
    }
    
    func verificarEmailFB(email: String, callback: @escaping (Error?, String?) -> ()){
        self.repositorio.verificarEmailFB(email: email, callback: callback)
    }
    
    func inserirConta(conta: Conta, callback: @escaping (Error?, String) -> ()){
        self.repositorio.inserirConta(conta: conta, callback:callback)
    }
    
    func getConta(idConta: String, callback: @escaping (Conta?, Error?) -> ()){
        return self.repositorio.getConta(idConta: idConta, callback: callback)
    }
    
    func atualizarConta(conta: Conta, callback: @escaping (Error?) -> ()){
        self.repositorio.atualizarConta(conta: conta, callback: callback)
    }
    
    /*func encontrarDonoItem(idItem: String, callback: (Conta?, Error?) -> ()){
        return self.repositorio.encontrarDonoItem(item: idItem)
    }*/
    
    func inserirItem(idItem: String, idConta: String, callback: @escaping (Error?) -> ()){
        self.repositorio.inserirItem(idItem: idItem, idConta: idConta, callback: callback)
    }
}
