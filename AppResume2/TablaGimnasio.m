//
//  TablaGimnasio.m
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "TablaGimnasio.h"


@implementation TablaGimnasio

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_gimnasiosArr count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *idceldas = @"celdaGim";
    
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idceldas];
    if (celda == nil) {
        celda = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idceldas];
    }
    NSInteger fila = [indexPath row];
    Gimnasio *gim = [ _gimnasiosArr objectAtIndex:fila];
    [[celda textLabel]setText:[gim nombre]];
    return celda;
}

-(Gimnasio *) gimnasioAt:(NSInteger)pos{
    return (Gimnasio *)[_gimnasiosArr objectAtIndex:pos];
}

@end




