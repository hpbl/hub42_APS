//
//  FabricaRepositoriosConcreto.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

public class FabricaRepositoriosCloudKit : FabricaRepositoriosAbstrata {
    
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
