//
//  Item.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    var id : String
    var nome : String
    var foto : UIImage
    
    init(id: String, nome: String, foto: UIImage) {
        self.id = id
        self.nome = nome
        self.foto = foto
    }
    
    func item(nome: String, foto: UIImage) {
        self.nome = nome
        self.foto = foto
        
        //TODO: Ver como inicializar o id
    }
}
