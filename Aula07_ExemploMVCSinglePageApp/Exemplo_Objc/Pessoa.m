//
//  Pessoa.m
//  Exemplo_Objc
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import "Pessoa.h"

@implementation Pessoa

-(float) calcularIMC_2 {
    return self.peso / (self.altura * self.altura);
}

-(void) calcularIMC {
    self.imc = self.peso / pow(self.altura, 2);
}

@end
