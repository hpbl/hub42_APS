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
    
    func inserirItem(item: Item, callback: @escaping (Error?) -> ()) {
        repositorio.inserirItem(item: item, callback: callback)
    }
    
    func solicitarItensPerto(localizacao: CLLocation, callback: @escaping ([Item]) -> ()) {
        return repositorio.solicitarItensPerto(localizacao: localizacao, callback: callback)
    }
}
