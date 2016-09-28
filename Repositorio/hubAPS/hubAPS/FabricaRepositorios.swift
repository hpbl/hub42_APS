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
        return FabricaRepositoriosCloudKit.criarRepositorioContas()
    }
    
    func criarRepositorioItens() -> IRepositorioItens {
        return FabricaRepositoriosCloudKit.criarRepositorioItens()
    }
    
    func criarRepositorioTrocas() -> IRepositorioTrocas {
        return FabricaRepositoriosCloudKit.criarRepositorioTrocas()
    }
    
}
