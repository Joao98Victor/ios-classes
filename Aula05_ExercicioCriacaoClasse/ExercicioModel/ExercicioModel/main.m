//
//  main.m
//  ExercicioModel
//
//  Created by Usuário Convidado on 12/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Enfermeira.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Enfermeira *e = [[Enfermeira alloc]init];
        e.nome = @"Ana";
        e.coren = 12345;
        e.salario = 5000;
        e.plantao = YES;
        NSLog(@"Enfermeira %@ coren: %d", e.nome, e.coren);
        NSLog(@"Permite plantão: %@", e.plantao?@"SIM":@"NÃO");
        NSLog(@"Salário é: %0.2f", e.salario);
        [e medicarComQtd:5 eNomeRemedio:@"Rivotril"];
        NSLog(@"%@", [e verificaTemperaturaComValor:39 eNomePaciente:@"João"]);
        
        Enfermeira *e2 = [[Enfermeira alloc] initWithNome: @"Abigail" eCoren:554 eSalario:25000 ePlantao:NO];
        
        NSLog(@"Enfermeira %@ coren: %d", e2.nome, e2.coren);
        NSLog(@"Permite plantão: %@", e2.plantao?@"SIM":@"NÃO");
        NSLog(@"Salário é: %0.2f", e2.salario);
        
    }
    return 0;
}
