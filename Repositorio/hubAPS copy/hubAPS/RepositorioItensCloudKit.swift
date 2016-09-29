//
//  RepositorioItens.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CoreLocation
import CloudKit

class RepositorioItensCloudKit : IRepositorioItens {
    
    
    private let container : CKContainer
    private let publicDB : CKDatabase
    
    init(){
        container = CKContainer.default()
        publicDB = container.publicCloudDatabase
    }
    
    func inserirItem(item: Item, callback: @escaping (Error?) -> ()){
        
        let asset = try? CKAsset(image: item.foto)
        let itemRecord = CKRecord(recordType: "item")
        
        itemRecord.setObject(item.id as CKRecordValue, forKey: "id")
        itemRecord.setObject(item.nome as CKRecordValue, forKey: "nome")
        itemRecord.setObject(asset, forKey: "foto")
        
        publicDB.save(itemRecord) { (record, error) in
            callback(error)
        }
        
    }
    
    func solicitarItensPerto(localizacao: CLLocation, callback: @escaping ([Item]) -> ()){}
    
}
