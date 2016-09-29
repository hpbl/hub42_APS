//
//  ComunicacaoFacebook.swift
//  hubAPS
//
//  Created by Mariama Oliveira on 9/28/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import Foundation

extension ViewController: FBSDKLoginButtonDelegate{
   
    
    func loginFacebook(){
        
        let loginView : FBSDKLoginButton = FBSDKLoginButton()
        self.view.addSubview(loginView)
        loginView.center = self.view.center
        loginView.readPermissions = ["public_profile", "email", "user_friends"]
        loginView.delegate = self
        
    }
    
    
    // Facebook Delegate Methods
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User Logged In")
        
        if ((error) != nil)
        {
            // Process error
        }
        else if result.isCancelled {
            // Handle cancellations
        }
        else {
    
            if result.grantedPermissions.contains("email")
            {
                // Fazer consulta do email
                self.pegarDados()
                
            }
        }
    }
    
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    
    
    func pegarDados(){
        
        
        FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "name, first_name, last_name, email"]).start(completionHandler: { (connection, result, error) -> Void in
            
            if ((error) != nil)
            {
                // Process error
                print("Error: \(error)")
            }
            else
            {
                if let dataDict = result as? [String:AnyObject] {
                    let email = (dataDict["email"] as? String)!
                    //let firstName = dataDict["first_name"] as? String
                    //let lastName  = dataDict["last_name"] as? String
                    
                    print(email)
                    
                    //Quardar email e chamar as açoes de cadastro
                    /*ADICIONAR CODIGO AQUI*/
                }
            }
        })
    }
    
}
