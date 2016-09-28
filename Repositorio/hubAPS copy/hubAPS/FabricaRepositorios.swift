//
//  FabricaRepositorios.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

protocol FabricaRepositorios {
    
    func criarRepositorioContas() -> IRepositorioContas
    func criarRepositorioItens() -> IRepositorioItens
    func criarRepositorioTrocas() -> IRepositorioTrocas
    
}

extension FabricaRepositorios {
    
    func criarRepositorioContas() -> IRepositorioContas {
        return RepositorioContasCloudKit()
    }
    
    func criarRepositorioItens() -> IRepositorioItens {
        return RepositorioItensCloudKit()
    }
    
    func criarRepositorioTrocas() -> IRepositorioTrocas {
        return RepositorioTrocasCloudKit()
    }
    
}
