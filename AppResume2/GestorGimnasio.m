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

-(NSMutableArray *) listarGimnasio:(int)op{
    if(op==1){
    Gimnasio *g1 = [[Gimnasio alloc]initConNombre:@"Gimnasio Paco" ciudad:@"Barcelona" calle:@"Av. Diagonal" capacidad:100];
    Gimnasio *g2 = [[Gimnasio alloc]initConNombre:@"Gimnasio Jordi" ciudad:@"Barcelona" calle:@"Ronda Mitre" capacidad:250];
    Gimnasio *g3 = [[Gimnasio alloc]initConNombre:@"Gimnasio Joan" ciudad:@"Barcelona" calle:@"Av. Gran via" capacidad:200];
    Gimnasio *g4 = [[Gimnasio alloc]initConNombre:@"Gimnasio Lionel" ciudad:@"Barcelona" calle:@"Av. Passeig Maritim" capacidad:300];
    lista = [NSMutableArray arrayWithObjects:g1,g2,g3,nil ];
    [lista addObject:g4];
    }
    return lista;
}
-(NSMutableArray *) addGimnasio:(Gimnasio *)element{
    //NSMutableArray *lista2 = [[NSMutableArray alloc]init];
    [lista addObject:element];
    return lista;
}
-(NSMutableArray *) itself:(NSMutableArray *)varlista{
    return varlista;
}

@end
