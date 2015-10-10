//
//  KLFruit.m
//  KM_LV_Task2
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "KLFruit.h"

@implementation KLFruit

- (id)initWithSort:(NSString *)sort
{
    self = [super init];
    if (self) {
        self.sort = sort;
        self.countOfSeeds = (int)rand()%10;
    }
    return self;
}

- (NSString*) showInformationAboutFruit
{
    NSString *res = [NSString stringWithFormat:@" Sort: %@ and contains %d seeds.", self.sort, self.countOfSeeds];
    return res;
}

@end
