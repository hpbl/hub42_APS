//
//  AddItemViewController.swift
//  hubAPS
//
//  Created by Mariama Oliveira on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var image: UIImageView!

    
    @IBAction func pressSaveBtn(_ sender: AnyObject) {
    }
    
    
    @IBAction func pressAddBtn(_ sender: AnyObject) {
        indicadorAtv.startAnimating()
        //TODO: chmar func de inserir item
        
        //TODO: indicadorAtv.stopAnimating() dentro do callback
        
    }
    

    func cadastrarItem(foto: UIImage, nome: String, conta: Conta){
        
    }
    
    @IBOutlet weak var indicadorAtv: UIActivityIndicatorView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
