//
//  CadastroItens.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation

class CadastroItens {
    
    init(repositorio:IRepositorioItens) {
        self.repositorio = repositorio
    }
    
    var repositorio : IRepositorioItens
    
    func inserirItem(item:Item) {
        repositorio.inserirItem(item: item)
    }
    
    func solicitarItensPerto(localizacao:CLLocation) -> NSArray {
        return repositorio.solicitarItensPerto(localizacao: localizacao)
    }
}
