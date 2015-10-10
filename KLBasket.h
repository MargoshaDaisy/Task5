//
//  KLBasket.h
//  KM_LV_Task2
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLFruit.h"
#import "KLIterator.h"

@interface KLBasket : NSObject <KLIterator>
{
    
    KLFruit *fruits[30];
}
@property int countOfFruits;

- (id)init;
- (void)add:(KLFruit*)newFruit;
- (void)showInformationAboutBasket;



@end
