//
//  ViewController.swift
//  UIKIT Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Joao Victor Ferreira Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var meuSegmento: UISegmentedControl!
    @IBOutlet weak var meuStepper: UIStepper!
    @IBOutlet weak var lblAno: UILabel!
    @IBOutlet weak var lblKM: UILabel!
    @IBOutlet weak var lblRota: UILabel!
   
    @IBAction func salvar(_ sender: Any) {
        var tipo:String
        var msg:String
        
        if meuSegmento.selectedSegmentIndex >= 0 {
            tipo = meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!
            msg = "O veículo \(tipo) do ano \(lblAno.text) foi salvo com sucesso!"
        } else {
            tipo = ""
            msg = "Antes de salvar escolha seu veículo"
        }
        
        let alerta = UIAlertController(
            title: "Atenção",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert)
        
        alerta.addAction(UIAlertAction(
            title: "OK",
            style: UIAlertActionStyle.default,
            handler: nil
        ))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func informarRota(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber a rota",
            message: "Faça sua escolha",
            preferredStyle: UIAlertControllerStyle.actionSheet
        )
        
        alerta.addAction(UIAlertAction(
            title: "SMS",
            style: UIAlertActionStyle.default,
            handler: { (sms) in
                self.lblRota.text = sms.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "E-mail",
            style: UIAlertActionStyle.default,
            handler: { (email) in
                self.lblRota.text = email.title
        }))
        
        alerta.addAction(UIAlertAction(
            title: "Cancelar",
            style: UIAlertActionStyle.cancel,
            handler: nil))
        
        present(alerta, animated: true, completion: nil)
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    @IBAction func sliderValueCahnged(_ sender: UISlider) {
        lblKM.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblAno.text = String(Int(meuStepper.value))
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch (meuSegmento.selectedSegmentIndex) {
        case 0:
            print("Você selecionou o 1º botão")
            break
        case 1:
            print("Você selecionou o 2º botão")
            break
        case 2:
            print("Você selecionou o \(meuSegmento.titleForSegment(at: meuSegmento.selectedSegmentIndex)!)")
            break
        default:
            break
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAno.text = "1980"
        lblKM.text = "7500"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

