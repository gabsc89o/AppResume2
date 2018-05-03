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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestor = [[GestorGimnasio alloc]init];
    _tablaDS = [[TablaGimnasio alloc]init];
    [_tablaGimnasio setDataSource:_tablaDS];
    [_tablaGimnasio setDelegate:self];
}

-(void) viewWillAppear:(BOOL)animated{
    [_tablaDS setGimnasiosArr:[_gestor listarGimnasio]];
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
        }
    }
}

-(IBAction)volver:(UIStoryboardSegue *)segue{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
