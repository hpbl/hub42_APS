//
//  ViewController.swift
//  hubAPS
//
//  Created by Hilton Pintor Bezerra Leite on 27/09/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import CoreLocation

class ViewController: UIViewController{

   // let fachada = Fachada.instance
    let fbLoginManager : FBSDKLoginManager = FBSDKLoginManager()
    var facebook : ComunicacaoFacebook?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.facebook = ComunicacaoFacebook(viewPrincipal: view)
        self.facebook?.loginFacebook()//Metodo que chama facebook
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func pressBtnFacebook(_ sender: AnyObject) {
       // self.fazerLogin()
    }
    
    
    func efetuarLoginFB(){
   
    }
    
}

