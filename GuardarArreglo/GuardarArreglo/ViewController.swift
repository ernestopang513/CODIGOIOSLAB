//
//  ViewController.swift
//  GuardarArreglo
//
//  Created by Macbook on 01/10/18.
//  Copyright © 2018 max. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lista : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = UserDefaults.standard
        lista = defaults.object(forKey: "lista") as? [String] ?? [String]()
        
        
        print(lista)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var caja: UITextField!
    
    
    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let dato = caja.text{
            lista.append(dato)
            defaults.set(lista, forKey: "lista")
        }
    }
}

