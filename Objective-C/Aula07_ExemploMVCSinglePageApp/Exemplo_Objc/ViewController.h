//
//  ViewController.h
//  Exemplo_Objc
//
//  Created by Usuário Convidado on 26/03/2018.
//  Copyright © 2018 Usuário Convidado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txtNome;

@property (weak, nonatomic) IBOutlet UITextField *txtPeso;

@property (weak, nonatomic) IBOutlet UITextField *txtAltura;

@property (weak, nonatomic) IBOutlet UITextField *txtIMC;

- (IBAction)calcular:(id)sender;

@end

