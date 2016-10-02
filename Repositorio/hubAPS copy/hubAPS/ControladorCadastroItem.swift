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
    var cadastroContas : CadastroContas
    
    init(repositorioItens:IRepositorioItens, repositorioContas:IRepositorioContas) {
        self.cadastroItens = CadastroItens(repositorio: repositorioItens)
        self.cadastroContas = CadastroContas(repositorio: repositorioContas)
    }
    
    /*func solicitarItensPerto(localizacao: CLLocation, callback: @escaping ([Item]) -> ()) {
        return self.cadastroItens.solicitarItensPerto(localizacao: localizacao, callback: callback)
    }*/
    
    
    func cadastrarItem(foto: UIImage, nome: String, idConta: String, callback: @escaping (Error?) -> ()){
        
        let item = Item(nome: nome, foto: foto)
        self.cadastroItens.inserirItem(item: item) { (error) in
            if (error == nil) {
                self.cadastroContas.inserirItem(idItem: item.id, idConta: idConta, callback: { (error) in
                        callback(error)
                })
            }
        }
      
       /* cadastroItens.inserirItem(item: Item(nome: nome, foto: foto)) { (<#Error?#>) in
            //Atualizar pagina para mais um item
        })*/
    }
    
    func verificarPreenchimento(foto: UIImage, nome: String){
        
    }
}
