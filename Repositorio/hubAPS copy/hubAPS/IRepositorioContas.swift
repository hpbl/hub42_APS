//
//  IRepositorioContas.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

protocol IRepositorioContas {
    
    func verificarEmail(email: String)
    func inserirConta(conta: Conta)
    func getConta(email: String) -> Conta
    func atualizarConta(conta: Conta)
    func encontrarDonoItem(item: Item) -> Conta
    func inserirItem(Item: Item, conta: Conta)
}
