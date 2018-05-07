//
//  ViewController.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaGimnasio.h"
#import "GestorGimnasio.h"

@interface ViewController : UIViewController<UITableViewDelegate>

{
    TablaGimnasio *_tablaDS;
    GestorGimnasio *_gestor;
}

@property IBOutlet UITableView *tablaGimnasio;
@property IBOutlet UITextField *tftext;

@end
