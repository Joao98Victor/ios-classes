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

