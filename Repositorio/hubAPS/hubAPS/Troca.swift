//
//  Troca.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class Troca {
    
    var remetente : Conta
    var destinatario : Conta
    var remetenteItem : Item
    var destinatarioItem : Item
    
    init(remetente: Conta, destinatario: Conta, remetenteItem: Item, destinatarioItem : Item) {
        self.remetente = remetente
        self.destinatario = destinatario
        self.remetenteItem = remetenteItem
        self.destinatarioItem = destinatarioItem
    }
    
    func troca(remetente: Conta, destinatario: Conta, remetenteItem: Item, destinatarioItem : Item) -> Conta {
        return troca(remetente: remetente, destinatario: destinatario, remetenteItem: remetenteItem, destinatarioItem: destinatarioItem)
        
    }
    
}
