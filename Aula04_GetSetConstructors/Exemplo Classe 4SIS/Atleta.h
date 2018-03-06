//
//  Atleta.h
//  Exemplo Classe 4SIS
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 agesandro scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atleta : NSObject {
    NSString *nome;
    int idade;
}

-(void)setNome:(NSString *)_nome;
-(NSString *)getNome;
-(void)setIdade:(int)_idade;
-(int)getIdade;

-(void)calculoImcComPeso:(float)peso eAltura:(float)altura;

-(NSString *)calcularRendimentoComDistanciaEmMetros:(float)metros eTempoEmHoras:(float)horas;

-(Atleta *)initWithNome:(NSString *)_nome
               andIdade:(int)_idade;
@end
