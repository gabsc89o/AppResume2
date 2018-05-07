//
//  DetalleGimnasio.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gimnasio.h"
#import "TablaGimnasio.h"
#import "GestorGimnasio.h"

@interface DetalleGimnasio : UIViewController

@property NSMutableArray *arrSegue2;
//@property GestorGimnasio *Gestor2;
@property TablaGimnasio *tablaDS2;
@property Gimnasio *gimnasio;
@property IBOutlet UILabel *lbNombre;
@property IBOutlet UILabel *lbCalle;
@property IBOutlet UILabel *lbCiudad;
@property IBOutlet UILabel *lbCapacidad;
@property IBOutlet UITextField *tfNombre;
@property IBOutlet UITextField *tfCalle;
@property IBOutlet UITextField *tfCiudad;
@property IBOutlet UITextField *tfCapacidad;

@end
