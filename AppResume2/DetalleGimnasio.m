//
//  DetalleGimnasio.m
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "DetalleGimnasio.h"
#import "ViewController.h"
@interface DetalleGimnasio ()

@end

@implementation DetalleGimnasio

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //_Gestor2 = [[GestorGimnasio alloc]init];
    _tablaDS2 = [[TablaGimnasio alloc]init];
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

-(IBAction)insertObj:(id)sender{
    ViewController *vc = [[ViewController alloc]init];
    int cap = [_tfCapacidad.text intValue];
    //Gimnasio *gn = [[Gimnasio alloc]initConNombre:@"Gimnasio New2" ciudad:@"Barcelona" calle:@"Gran via" capacidad:100];
    Gimnasio *gn2 = [[Gimnasio alloc]initConNombre:_tfNombre.text ciudad:_tfCiudad.text calle:_tfCalle.text capacidad:cap];
    [_arrSegue2 addObject:gn2];
    //[_Gestor2 addGimnasio:gn];
    //[_tablaDS2 setGimnasiosArr:[_Gestor2 listarGimnasio:2 ]];
    [_tablaDS2 setGimnasiosArr:_arrSegue2];
    [vc.tablaGimnasio reloadData];
}

@end
