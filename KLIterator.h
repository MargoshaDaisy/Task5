//
//  KLIterator.h
//  KM_LV_Task2
//
//  Created by fpmi on 23.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KLIterator

@property int indexOfLastElement;

- (BOOL)hasNext;
- (id)next;

@end