//
//  Enfermeira.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import "Enfermeira.h"

@implementation Enfermeira

-(void)medicarComQtd:(int)qtd
        eNomeRemedio:(NSString *) remedio{
    NSLog(@"A enfermeira %@ medicou com %@ na qtd %d",self.nome, remedio, qtd);
}


-(NSString *)verificaTemperaturaComValor:(float)valor
                           eNomePaciente:(NSString *) nome{
    NSString *mensagem;
    if (valor > 37) {
        mensagem = [NSString stringWithFormat:@"O Paciente %@ está com febre.", nome];
    }else{
        mensagem = [NSString stringWithFormat:@"O Paciente %@ não está com febre.", nome];
    }
    return mensagem;
}


-(Enfermeira *) initWithNome:(NSString *)_nome
                      eCoren:(int) _coren
                    eSalario:(float) _salario
                    ePlantao:(bool) _plantao{
    
    self = [super init];
    if (self) {
        self.nome =_nome;
        self.coren =_coren;
        self.salario =_salario;
        self.plantao =_plantao;
    }
    return self;
}



@end
