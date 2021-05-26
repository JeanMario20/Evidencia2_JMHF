//
//  ViewController.swift
//  Evidencia 2
//
//  Created by user172369 on 4/10/21.
//  Copyright © 2021 user172369. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webview: WKWebView!
    
    
    //Inclusion de la animacion en el boton
    @IBAction func Animacion(_ sender: AnyObject) {
        let theButton = sender as! UIButton
        
        let bounds = theButton.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut, animations: {
            theButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 20, height: bounds.size.height)
        }) { (success:Bool) in
            if success {
                theButton.bounds = bounds
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //webview.load(URLRequest(url:URL(string:"https://www.google.com")!))
    guard let url = URL(string: "https://www.eluniversal.com.mx/estados/en-tabasco-personal-educativo-recibe-sus-primeras-dosis-contra-covid") else {
            return
    }
    let request = URLRequest(url: url)
        webview?.load(request)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBOutlet weak var TextFieldNombre: UITextField!
    
    @IBOutlet weak var MostrarNombre: UITextView!
    
    
    @IBOutlet weak var TexFieldEdad: UITextField!
    
    @IBOutlet weak var MostrarEdad: UITextView!
    
    
    @IBOutlet weak var TextFieldSangre: UITextField!
    
    @IBOutlet weak var MostrarSangre: UITextView!
    
    
    @IBOutlet weak var TextFieldGenero: UITextField!
    
    @IBOutlet weak var MostrarGenero: UITextView!
    
    @IBAction func mandarInfo(_ sender: UIButton){
        let mTextNombre = TextFieldNombre.text
        MostrarNombre.text = mTextNombre
        
        let mTextEdad = TexFieldEdad.text
        MostrarEdad.text = mTextEdad
        
        let mTextSangre = TextFieldSangre.text
        MostrarSangre.text = mTextSangre
        
        let mTextGenero = TextFieldGenero.text
        MostrarGenero.text = mTextGenero
    }
}

