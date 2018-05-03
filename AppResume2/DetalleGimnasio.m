//
//  DetalleGimnasio.m
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "DetalleGimnasio.h"

@interface DetalleGimnasio ()

@end

@implementation DetalleGimnasio

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated{
    _lbNombre.text = _gimnasio.nombre;
    _lbCiudad.text = _gimnasio.ciudad;
    _lbCalle.text = _gimnasio.calle;
    _lbCapacidad.text = [NSString stringWithFormat:@"%d",_gimnasio.capacidad];
}
//-(IBAction)<#selector#>:(id)sender)

@end
