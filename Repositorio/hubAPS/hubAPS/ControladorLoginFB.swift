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
        //let conta = Conta(id: <#T##Int#>, email: <#T##String#>, itens: <#T##Array<Int>#>, localizacao: <#T##CLLocation#>)
        //self.cadastroContas.inserirConta(conta: conta)
    }
}
