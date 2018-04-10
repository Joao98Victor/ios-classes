//
//  Pessoa.swift
//  Exemplo Swift
//
//  Created by Usuário Convidado on 09/04/2018.
//  Copyright © 2018 Joao Victor Ferreira Lima. All rights reserved.
//

import Foundation

class Pessoa{
    
    var nome: String!
    var peso: Float!
    var altura: Float!
    var imc: Float!
    
    init() {
        
    }
    
    func calcularImc() {
        imc = peso / (altura * altura)
    }
    
    func calcularImc2() -> Float{
        return peso / (altura * altura)
    }
    
}
