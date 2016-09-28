 //
 //  FabricaRepositorios.swift
 //  hubAPS
 //
 //  Created by Ian Manor on 9/27/16.
 //  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
 //
 
 import Foundation
 import RepositorioContasCloudKit
 import RepositorioItensCloudKit
 import RepositorioTrocasCloudKit
 
 public class FabricaRepositoriosCloudKit : FabricaRepositorios {
 
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
