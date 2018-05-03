//
//  GestorGimnasio.m
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "GestorGimnasio.h"
#import "Gimnasio.h"

@implementation GestorGimnasio

-(NSArray *) listarGimnasio{
    Gimnasio *g1 = [[Gimnasio alloc]initConNombre:@"Gimnasio Paco" ciudad:@"Barcelona" calle:@"Av. Diagonal" capacidad:100];
    Gimnasio *g2 = [[Gimnasio alloc]initConNombre:@"Gimnasio Jordi" ciudad:@"Barcelona" calle:@"Ronda Mitre" capacidad:250];
    Gimnasio *g3 = [[Gimnasio alloc]initConNombre:@"Gimnasio Joan" ciudad:@"Barcelona" calle:@"Av. Gran via" capacidad:200];
    Gimnasio *g4 = [[Gimnasio alloc]initConNombre:@"Gimnasio Lionel" ciudad:@"Barcelona" calle:@"Av. Passeig Maritim" capacidad:300];
    
}

@end
