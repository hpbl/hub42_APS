//
//  ControladorCadastroItem.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation

class ControladorCadastroItem {
    
    var cadastroItens : CadastroItens
    
    init(repositorio:IRepositorioItens) {
        self.cadastroItens = CadastroItens(repositorio: repositorio)
    }
    
    /*func solicitarItensPerto(localizacao: CLLocation, callback: @escaping ([Item]) -> ()) {
        return self.cadastroItens.solicitarItensPerto(localizacao: localizacao, callback: callback)
    }*/
    
    
    func cadastrarItem(foto: UIImage, nome: String, conta: Conta){
        
      
       /* cadastroItens.inserirItem(item: Item(nome: nome, foto: foto)) { (<#Error?#>) in
            //Atualizar pagina para mais um item
        })*/
    }
    
    func verificarPreenchimento(foto: UIImage, nome: String){
        
    }
}
