//
//  Gimnasio.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Gimnasio : NSObject

@property NSString *nombre;
@property NSString *ciudad;
@property NSString *calle;
@property int capacidad;

-(id) initConNombre:(NSString *)nombre
             ciudad:(NSString *)ciudad
              calle:(NSString *)calle
          capacidad:(int)capacidad;

@end
