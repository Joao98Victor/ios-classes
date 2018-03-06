//
//  Atleta.m
//  Exemplo Classe 4SIS
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 agesandro scarpioni. All rights reserved.
//

#import "Atleta.h"

@implementation Atleta

-(void)setNome:(NSString *)_nome{
    nome = _nome;
}

-(NSString *)getNome{
    return nome;
}

-(void)setIdade:(int)_idade{
    idade = _idade;
}

-(int)getIdade{
    return idade;
}

-(void)calculoImcComPeso:(float)peso
                 eAltura:(float)altura{
    
    float imc = peso / (altura * altura);
    NSLog(@"O imc de %@ é %0.2f", [self getNome], imc);
}

-(NSString *)calcularRendimentoComDistanciaEmMetros:(float)metros
                                      eTempoEmHoras:(float)horas{
    float resultado = metros/horas;
    NSString *texto = [NSString stringWithFormat:@"Seu rendimento é %0.2f metros/hora ", resultado];
    return texto;
}

-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade{
    self = [super init];
    if(self){
        nome = _nome;
        idade = _idade;
    }
    return self;
}
@end
