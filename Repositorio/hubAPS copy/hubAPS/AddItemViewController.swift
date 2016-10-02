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
        //indicadorAtv.startAnimating()
        //TODO: chmar func de inserir item
        //fachada.cadastrarItem(foto: image.image, nome: textField.text, conta: )//Como pegar a conta
        
        //TODO: indicadorAtv.stopAnimating() dentro do callback
        
    }
    
    
    @IBAction func pressAddBtn(_ sender: AnyObject) {
        //abrindo camera
        picker.allowsEditing = false
        picker.sourceType = UIImagePickerControllerSourceType.camera
        picker.cameraCaptureMode = .photo
        picker.modalPresentationStyle = .fullScreen
        present(picker, animated: true, completion: nil)
    }
    

    func cadastrarItem(foto: UIImage, nome: String, conta: Conta){
        
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
