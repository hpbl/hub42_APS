//
//  AddItemViewController.swift
//  hubAPS
//
//  Created by Mariama Oliveira on 9/27/16.
//  Copyright © 2016 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate{
    
    //MARK: - Outlets e Variaveis
    let fachada = Fachada.instance
    
    let picker = UIImagePickerController()
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func pressSaveBtn(_ sender: AnyObject) {
        
        if (self.conferirCampos()){
            
            self.indicadorAtv.startAnimating()
            
            self.cadastrarItem(foto: self.image.image!, nome: self.textField.text!) {
                (error) in
                if (error == nil) {
                    self.indicadorAtv.stopAnimating()
                    
                    //alerta
                    self.alerta(resultado: "sucesso")
                    
                }
                else {
                    self.indicadorAtv.stopAnimating()
                    
                    //alerta
                    self.alerta(resultado: "falha")
                }
            }
        } else {
            self.alerta(resultado: "preenchimento")
        }
    }
    
    func conferirCampos() -> Bool {
        return (self.textField.text != nil && self.image.image != nil)
    }
    
    func alerta(resultado: String) {
        
        var titulo : String
        var mensagem : String
        
        switch resultado {
        case "sucesso":
            titulo = "Sucesso!"
            mensagem = "O item foi inserido no banco"
            break
            
        case "falha":
            titulo = "Falha!"
            mensagem = "O item não pode ser inserido no banco"
            break
            
        case "preenchimento":
            titulo = "Erro!"
            mensagem = "Insira um nome e uma foto para ao item"
            break
            
        default:
            titulo = "Falha!"
            mensagem = "O item não pode ser inserido no banco"
            break
        }
        
        let alertController = UIAlertController(title: titulo, message: mensagem, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func pressAddBtn(_ sender: AnyObject) {
        //abrindo camera
        picker.allowsEditing = false
        picker.sourceType = UIImagePickerControllerSourceType.camera
        picker.cameraCaptureMode = .photo
        picker.modalPresentationStyle = .fullScreen
        present(picker, animated: true, completion: nil)
    }
    

    func cadastrarItem(foto: UIImage, nome: String, callback: @escaping (Error?) -> ()){
        self.fachada.cadastrarItem(foto: foto, nome: nome, callback: callback)
            
        
    }
    
    @IBOutlet weak var indicadorAtv: UIActivityIndicatorView!
    
    // MARK: - Ciclo de vida da View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        picker.delegate = self
        textField.delegate = self
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: - Metodos do Imagepicker
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : Any]){
        
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        self.image.contentMode = .scaleAspectFill
        self.image.image = chosenImage
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: - Metodos do TextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}
