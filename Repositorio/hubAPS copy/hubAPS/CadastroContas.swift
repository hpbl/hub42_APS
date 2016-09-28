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
    
    func verificarEmail(email: String) {
        self.repositorio.verificarEmail(email: email)
    }
    
    func inserirConta(conta: Conta) {
        self.repositorio.inserirConta(conta: conta)
    }
    
    func getConta(email: String) -> Conta {
        return self.repositorio.getConta(email: email)
    }
    
    func atualizarConta(conta: Conta) {
        self.repositorio.atualizarConta(conta: conta)
    }
    
    func encontrarDonoItem(item: Item) -> Conta {
        return self.repositorio.encontrarDonoItem(item: item)
    }
    
    func inserirItem(item: Item, conta: Conta) {
        self.repositorio.inserirItem(Item: item, conta: conta)
    }
}
