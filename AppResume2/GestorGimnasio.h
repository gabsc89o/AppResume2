//
//  GestorGimnasio.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gimnasio.h"
@interface GestorGimnasio : NSObject

{
    NSMutableArray *lista;
}

-(NSMutableArray *) listarGimnasio:(int )op;
-(NSMutableArray *) addGimnasio:(Gimnasio *)element;
-(NSMutableArray *) itself:(NSMutableArray *)varlista;
@end
