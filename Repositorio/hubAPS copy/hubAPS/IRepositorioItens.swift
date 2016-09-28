//
//  IRepositorioItens.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation

protocol IRepositorioItens {
    
    func inserirItem(item: Item)
    func solicitarItensPerto(localizacao: CLLocation) -> NSArray
}
