//
//  ViewController.swift
//  UserDeafaults
//
//  Created by Macbook on 01/10/18.
//  Copyright © 2018 max. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        if let dato = defaults.object(forKey: "Caja") as? String{
            caja.text = dato
        }else{
            caja.text = "No hay nada guardado"
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        if let dato = caja.text{
            defaults.set(dato, forKey: "Caja")
        }
    }
    
    @IBOutlet weak var caja: UITextField!
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

