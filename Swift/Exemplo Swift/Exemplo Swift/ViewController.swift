//
//  ViewController.swift
//  Exemplo Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Joao Victor Ferreira Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtPeso: UITextField!
    @IBOutlet weak var txtAltura: UITextField!
    @IBOutlet weak var txtIMC: UITextField!
    
    @IBAction func calcular(_ sender: Any) {
        let p = Pessoa()
        p.nome = txtNome.text
        p.peso = Float(txtPeso.text!)
        p.altura = Float(txtAltura.text!)
        p.calcularImc()
        txtIMC.text = "\(p.imc!)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

