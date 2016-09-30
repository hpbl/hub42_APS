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
        controladorCadastroItem = ControladorCadastroItem(repositorio: repositorioItens)
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
    
    func efetuarLoginFB() {
        
    }
    
    func cadastrarItem(foto:UIImage, nome:String, conta:Conta) {
        //controladorCadastroItem.cadastroItens
    }
    
}
