//
//  KLFruit.h
//  KM_LV_Task2
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLFruit : NSObject

@property (copy) NSString *sort;
@property int countOfSeeds;

- (NSString*)showInformationAboutFruit;

- (id)initWithSort:(NSString *)sort;

@end
