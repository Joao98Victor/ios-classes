//
//  Enfermeira.h
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Enfermeira : NSObject

@property(nonatomic, retain) NSString *nome;
@property(nonatomic) int coren;
@property(nonatomic) float salario;
@property(nonatomic) bool plantao;

-(void)medicarComQtd:(int)qtd
        eNomeRemedio:(NSString *) remedio;

-(NSString *)verificaTemperaturaComValor:(float)valor
                           eNomePaciente:(NSString *) nome;

-(Enfermeira *) initWithNome:(NSString *)_nome
                    eCoren:(int) _coren
                    eSalario:(float) _salario
                    ePlantao:(bool) _plantao;

@end
