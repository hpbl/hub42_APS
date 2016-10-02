//
//  ControladorLoginFB.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation

class ControladorLoginFB {
    
    var facebook : ComunicacaoFacebook?
    var cadastroContas : CadastroContas
    var fachadaCallback : ((Error?, String) -> ())?
    
    init(repositorioContas:IRepositorioContas) {
        self.cadastroContas = CadastroContas(repositorio: repositorioContas)
    }
    
    func efetuarLoginFB(view : UIView, callback: @escaping (Error?, String) -> ()){
        //let conta = Conta(id: Int, email: String, itens: Array<Int>, localizacao: CLLocation)
        //self.cadastroContas.inserirConta(conta: conta)
        self.fachadaCallback = callback
        self.facebook = ComunicacaoFacebook(viewPrincipal: view)
        self.facebook?.loginFacebook(callbackCadastro: cadastrarContaFB)//Metodo que chama facebook
        
    }
    
    func cadastrarContaFB(){
        print((self.facebook?.emailUsuario)!)
    
        let contaFB = Conta(email: (self.facebook?.emailUsuario)!, itens: [], localizacao: CLLocation(latitude: 0, longitude: 0))
        
        self.cadastroContas.verificarEmailFB(email: (contaFB.email)!) {
            (erro, id) in
            if (id != nil) {
                self.fachadaCallback!(nil, id!)
            } else {
                self.cadastroContas.inserirConta(conta: contaFB, callback: self.fachadaCallback!)
            }
        }
        
        
    }
}
