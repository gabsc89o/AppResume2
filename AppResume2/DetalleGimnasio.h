//
//  DetalleGimnasio.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gimnasio.h"

@interface DetalleGimnasio : UIViewController

@property Gimnasio *gimnasio;
@property IBOutlet UILabel *lbNombre;
@property IBOutlet UILabel *lbCalle;
@property IBOutlet UILabel *lbCiudad;
@property IBOutlet UILabel *lbCapacidad;


@end
