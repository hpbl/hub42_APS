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
    
    init(nome: String, foto: UIImage) {
        self.id = NSUUID().uuidString
        self.nome = nome
        self.foto = foto
    }
}
