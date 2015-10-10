//
//  main.m
//  KM_LV_Task2
//
//  Created by fpmi on 12.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLBasket.h"
#import "KLApple.h"
#import "KLBanana.h"
#import "KLOrange.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        srand((time(NULL)));
       /* KLTree *tree = [[KLTree alloc] initWithSort:@"Antonovka"];
       [tree showFullInformationAboutTree];
        [tree grow];
        [tree showFullInformationAboutTree];
        [tree shake];
        [tree showFullInformationAboutTree];
        [tree grow];
        [tree showFullInformationAboutTree];
        [tree release];  */
        
        KLApple *apple1 = [[KLApple alloc] initWithSort:@"AppleSort1"];
        KLApple *apple2 = [[KLApple alloc] initWithSort:@"AppleSort2"];
        KLApple *apple3 = [[KLApple alloc] initWithSort:@"AppleSort3"];
        KLBanana *banana1 = [[KLBanana alloc] initWithSort:@"BananaSort1"];
        KLBanana *banana2 = [[KLBanana alloc] initWithSort:@"BananaSort2"];
        KLOrange *orange1 = [[KLOrange alloc] initWithSort:@"OrangeSort1"];
        KLApple *orange2 = [[KLOrange alloc] initWithSort:@"OrangeSort2"];
        
        
        KLBasket *busket = [[KLBasket alloc]init];
        [busket showInformationAboutBasket];
        [busket add:apple1];
        [busket add:apple2];
        [busket add:apple3];
        [busket add:banana1];
        [busket add:banana2];
        [busket add:orange1];
        [busket add:orange2];
        [busket showFullInformationAboutBasket];
        
        
        NSLog(@"Information about basket using iterator:");
        while ([busket hasNext]) {
            [[busket next] showInformationAboutFruit];
        }
        [apple1 release];
        [apple2 release];
        [apple3 release];
        [banana1 release];
        [banana2 release];
        [orange1 release];
        [orange2 release];
        [busket release];
        
    }
    return 0;
}
