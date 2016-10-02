//
//  Fachada.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import UIKit

class Fachada {
    
    var controladorLoginFB : ControladorLoginFB
    var controladorCadastroItem : ControladorCadastroItem
    var contaAtual : ContaAtual?
    
    private init() {
        var fabricaRepositorios : FabricaRepositoriosAbstrata? = nil
        
        if let path = Bundle.main.path(forResource: "configurations", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
                switch dict["repositoryType"] {
                case "CloudKit" as String:
                    fabricaRepositorios = FabricaRepositoriosCloudKit()
                default:
                    break
                }
            }
            

        }
        
        let repositorioContas = fabricaRepositorios!.criarRepositorioContas()
        let repositorioItens = fabricaRepositorios!.criarRepositorioItens()
        //let repositorioTrocas = fabricaRepositorios!.criarRepositorioTrocas()
        
        controladorLoginFB = ControladorLoginFB(repositorioContas: repositorioContas)
        controladorCadastroItem = ControladorCadastroItem(repositorioItens: repositorioItens, repositorioContas: repositorioContas)
        
    }
    
    /*Singleton pattern implementation*/
    private static var _instance: Fachada?
    static var instance: Fachada {
        get {
            if self._instance == nil {
                self._instance = Fachada()
            }
            return self._instance!
        }
    }
    
    func efetuarLoginFB(view : UIView, callback: @escaping (Error?) -> ()) {
        controladorLoginFB.efetuarLoginFB(view: view) {
            erro, id in
            if (erro == nil) {
                self.contaAtual?.idConta = id
            }
            callback(erro)
            
        }
    }
    

    func cadastrarItem(foto: UIImage, nome: String, callback: @escaping (Error?) -> ()) {
        controladorCadastroItem.cadastrarItem(foto: foto, nome: nome, idConta: (self.contaAtual?.idConta!)!, callback: callback)
    }
    
}
