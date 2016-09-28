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
    
    var cadastroContas : CadastroContas
    
    init(repositorioContas:IRepositorioContas) {
        self.cadastroContas = CadastroContas(repositorio: repositorioContas)
    }
    
    func efetuarLoginFB() {
        //let conta = Conta(id: Int, email: String, itens: Array<Int>, localizacao: CLLocation)
        //self.cadastroContas.inserirConta(conta: conta)
    }
}
