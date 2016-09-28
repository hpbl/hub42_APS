//
//  RepositorioContasCloudKit.swift
//  hubAPS
//
//  Created by Ian Manor on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation
import CloudKit

class RepositorioContasCloudKit : IRepositorioContas{

    
    private let container : CKContainer
    private let publicDB : CKDatabase
    
    init(){
        container = CKContainer.default()
        publicDB = container.publicCloudDatabase
    }
    
    func inserirConta(conta: Conta, callback: @escaping (Error?) -> ()) {
        
        let contaRecord = CKRecord(recordType:"Conta")
        contaRecord.setObject(conta.email as CKRecordValue?, forKey: "email")
        contaRecord.setObject(conta.id as CKRecordValue?, forKey: "id")
        contaRecord.setObject(conta.itens as CKRecordValue?, forKey: "itens")
        contaRecord.setObject(conta.localizacao, forKey: "localizacao")
        contaRecord.setObject(conta.senha as CKRecordValue?, forKey: "senha")

        publicDB.save(contaRecord) { (record, error) in
            if ((error) != nil) {
                callback(error!)
            }
        }
    }
    
    func getConta(idConta: String, callback: @escaping (Conta?, Error?) -> ()) {
        let predicate : NSPredicate = NSPredicate(format: "id == %@", idConta)
        let query = CKQuery(recordType: "Conta", predicate: predicate);
        
        publicDB.perform(query, inZoneWith: nil) { (records, error) in
            if (records != nil) {
                
                let id = records?[0].object(forKey: "id") as! String
                let email = records?[0].object(forKey: "email") as! String
                let senha = records?[0].object(forKey: "senha") as! String
                let itens = records?[0].object(forKey: "itens") as! [String]
                let localizacao = records?[0].object(forKey: "localizacao") as! CLLocation

                
                callback(Conta(id: id, email: email, senha: senha , itens: itens, localizacao: localizacao), error)
            }
        }
    }
    
    func verificarEmail(email: String, callback: @escaping (Bool?, Error?) -> ()) {
        let predicate : NSPredicate = NSPredicate(format: "email == %@", email)
        let query = CKQuery(recordType: "Conta", predicate: predicate);
        
        publicDB.perform(query, inZoneWith: nil) { (records, error) in
            if (records != nil) {
                callback(true, error)
            } else {
                callback(false, error)
            }
        }
    }
    
    func inserirItem(idItem: String, conta: Conta, callback: @escaping (Error?) -> ()){
        let predicate : NSPredicate = NSPredicate(format: "id == %@", conta.id)
        let query = CKQuery(recordType: "Conta", predicate: predicate);
        
        publicDB.perform(query, inZoneWith: nil) { (records, error) in
            if (records != nil) {

                let id = records?[0].object(forKey: "id") as! String
                let email = records?[0].object(forKey: "email") as! String
                let senha = records?[0].object(forKey: "senha") as! String
                let localizacao = records?[0].object(forKey: "localizacao") as! CLLocation
                var itens = records?[0].object(forKey: "itens") as! [String]
                itens.append(idItem)
                
                let conta = Conta(id: id, email: email, senha: senha , itens: itens, localizacao: localizacao)
                
                self.inserirConta(conta: conta, callback: callback)
            }
        }
    }
    
    func atualizarConta(conta: Conta, callback: @escaping (Error?) -> ()){
        let predicate : NSPredicate = NSPredicate(format: "id == %@", conta.id)
        let query = CKQuery(recordType: "Conta", predicate: predicate);
        
        publicDB.perform(query, inZoneWith: nil) { (records, error) in
            if (records != nil) {
                
                records?[0].setObject(conta.email as CKRecordValue?, forKey: "email")
                records?[0].setObject(conta.itens as CKRecordValue?, forKey: "itens")
                records?[0].setObject(conta.localizacao, forKey: "localizacao")
                records?[0].setObject(conta.senha as CKRecordValue?, forKey: "senha")
                
                self.publicDB.save((records?[0])!, completionHandler: { (record, error) in
                    callback(error)
                })
            }
        }
        
    }
    
    func encontrarDonoItem(idItem: String, callback: (Conta?, Error?) -> ()){}


    

    
}
