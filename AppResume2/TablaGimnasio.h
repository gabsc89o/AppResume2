//
//  TablaGimnasio.h
//  AppResume2
//
//  Created by user138066 on 5/3/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Gimnasio.h"

@interface TablaGimnasio : NSObject<UITableViewDataSource>

@property NSMutableArray *gimnasiosArr;

-(Gimnasio *) gimnasioAt:(NSInteger)pos;

@end
