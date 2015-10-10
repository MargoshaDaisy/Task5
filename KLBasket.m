//
//  KLBasket.m
//  KM_LV_Task2
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "KLBasket.h"

@implementation KLBasket

@synthesize indexOfLastElement = _indexOfLastElement;

- (id)init
{
    self = [super init];
    self.indexOfLastElement = -1;
    return self;
}

-(void)add:(KLFruit*)newFruit
{
    if (self.countOfFruits < 30)
    {
        fruits[self.countOfFruits++] = newFruit;        
    }
}

- (void)showInformationAboutBasket
{
    NSLog(@"This basket contains %d fruits.", (int)self.countOfFruits);
    
}

- (void)showFullInformationAboutBasket
{
    NSLog(@"Full information about basket:");
    [self showInformationAboutBasket];
    for (int i = 0; i < self.countOfFruits; i++)
    {
        [fruits[i] showInformationAboutFruit];
    }
    NSLog(@" ");
}

- (id)next
{
    if (self.indexOfLastElement != self.countOfFruits/2)
    {
        if (self.indexOfLastElement == -1)
        {
            self.indexOfLastElement = 0;
            return fruits[self.indexOfLastElement];
        }
        else if (self.indexOfLastElement < self.countOfFruits/2)
        {
            self.indexOfLastElement = self.countOfFruits-self.indexOfLastElement - 1;
        
        }
        else if (self.indexOfLastElement > self.countOfFruits/2)
        {
            self.indexOfLastElement = self.countOfFruits-self.indexOfLastElement;
        }
        return fruits[self.indexOfLastElement];
     }
    else
        return nil;
}

- (BOOL) hasNext
{
   if (self.indexOfLastElement == self.countOfFruits/2)
       return false;
    return true;
}

@end
