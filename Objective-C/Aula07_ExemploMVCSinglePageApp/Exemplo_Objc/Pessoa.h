//
//  Pessoa.h
//  Exemplo_Objc
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoa : NSObject

@property (nonatomic, retain) NSString* nome;

@property (nonatomic) float peso;

@property (nonatomic) float altura;

@property (nonatomic) float imc;

-(void) calcularIMC;

-(float) calcularIMC_2;

@end
