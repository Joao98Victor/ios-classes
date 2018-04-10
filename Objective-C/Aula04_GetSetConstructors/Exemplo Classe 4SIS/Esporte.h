//
//  Esporte.h
//  Exemplo Classe 4SIS
//
//  Created by Usuário Convidado on 05/03/2018.
//  Copyright © 2018 agesandro scarpioni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Esporte : NSObject

@property(nonatomic, retain)NSString *modalidade;
@property(nonatomic)int federados;

-(void)premiar;

@end
