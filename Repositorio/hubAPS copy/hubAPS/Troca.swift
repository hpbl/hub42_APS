//
//  Troca.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

class Troca {
    
    var id : String
    var idRemetente : String
    var idDestinatario : String
    var idRemetenteItem : String
    var idDestinatarioItem : String
    
    init(idRemetente: String, idDestinatario: String, idRemetenteItem: String, idDestinatarioItem : String) {
        self.id = NSUUID().uuidString
        self.idRemetente = idRemetente
        self.idDestinatario = idDestinatario
        self.idRemetenteItem = idRemetenteItem
        self.idDestinatarioItem = idDestinatarioItem
    }
    
}
