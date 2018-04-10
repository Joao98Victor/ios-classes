//
//  main.m
//  Exemplo Classe 4SIS
//
//  Created by Usuário Convidado on 26/02/2018.
//  Copyright © 2018 agesandro scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Atleta.h"
#import "Esporte.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Atleta *a = [[Atleta alloc]init];
        [a setNome:@"José da Silva"];
        [a setIdade:23];
        
        NSLog(@"o Iron Man %@ tem %d anos",[a getNome],[a getIdade]);
        [a calculoImcComPeso:68 eAltura:1.75];
        NSLog(@"%@",[a calcularRendimentoComDistanciaEmMetros:5000 eTempoEmHoras:2]);
        
        Atleta *a2 = [[Atleta alloc]initWithNome:@"Maria Souza" andIdade:30];
        NSLog(@"o Iron Man %@ tem %d anos",[a2 getNome],[a2 getIdade]);
        
        Esporte *e = [[Esporte alloc]init];
        [e setModalidade:@"Judô"];
        NSLog(@"A modalidade é %@", [e modalidade]);
    }
    return 0;
}
