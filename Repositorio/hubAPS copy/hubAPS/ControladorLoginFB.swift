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
    
    init(repositorioContas:IRepositorioContas) {
        self.cadastroContas = CadastroContas(repositorio: repositorioContas)
    }
    
    func efetuarLoginFB(view : UIView) {
        //let conta = Conta(id: Int, email: String, itens: Array<Int>, localizacao: CLLocation)
        //self.cadastroContas.inserirConta(conta: conta)
        self.facebook = ComunicacaoFacebook(viewPrincipal: view)
        self.facebook?.loginFacebook(callback: cadastrarConta)//Metodo que chama facebook
    }
    
    func cadastrarConta(){
        print((self.facebook?.emailUsuario)!)
        
        let newConta = Conta(email: ((self.facebook?.emailUsuario)!) , itens: [], localizacao: CLLocation())
        self.cadastroContas.inserirConta(conta: newConta, callback: <#T##(Error?) -> ()#>)
    }
}
