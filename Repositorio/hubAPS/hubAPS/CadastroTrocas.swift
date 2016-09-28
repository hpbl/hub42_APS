//
//  CadastroTrocas.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class CadastroTrocas {
    
    init(repositorio:IRepositorioTrocas) {
        self.repositorio = repositorio
    }
    
    var repositorio : IRepositorioTrocas
 
    func inserirTroca(troca:Troca) {
        self.repositorio.inserirTroca(troca: troca)
    }
}
