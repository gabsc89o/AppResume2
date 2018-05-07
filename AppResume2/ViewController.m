//
//  ViewController.m
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"
#import "DetalleGimnasio.h"

@interface ViewController ()

@end

@implementation ViewController
int var=1;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestor = [[GestorGimnasio alloc]init];
    _tablaDS = [[TablaGimnasio alloc]init];
    [_tablaGimnasio setDataSource:_tablaDS];
    [_tablaGimnasio setDelegate:self];
}
-(IBAction)inserTest:(id)sender{
    Gimnasio *gn = [[Gimnasio alloc]initConNombre:@"Gimnasio New" ciudad:@"Barcelona" calle:@"Gran via" capacidad:100];
    [_gestor addGimnasio:gn];
    [_tablaDS setGimnasiosArr:[_gestor listarGimnasio:2]];
    [_tablaGimnasio reloadData];
    NSLog(@"numero2: %d",[_gestor listarGimnasio:2].count);
}
-(void) viewWillAppear:(BOOL)animated{
    [_tablaDS setGimnasiosArr:[_gestor listarGimnasio:var]];
    var=2;
    [_tablaGimnasio reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Gimnasio *g = [_tablaDS gimnasioAt:[indexPath row]];
    [self performSegueWithIdentifier:@"verDetalle" sender:g];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"verDetalle"]) {
        if ([sender isKindOfClass:[Gimnasio class]]) {
            DetalleGimnasio *dg = (DetalleGimnasio *)[segue destinationViewController];
            [dg setGimnasio:(Gimnasio *)sender];
            [dg setArrSegue2: [_gestor listarGimnasio:2] ];
            //[dg setGestor2:_gestor];
            [dg setTablaDS2:(TablaGimnasio *)sender];
        }
    }
}

-(IBAction)volver:(UIStoryboardSegue *)segue{}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
