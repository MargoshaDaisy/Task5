//
//  ViewController.m
//  TableTask
//
//  Created by fpmi on 03.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "ViewController.h"
#import "KLBasket.h"
#import "KLApple.h"
#import "KLBanana.h"
#import "KLFruit.h"
#import "KLOrange.h"


@interface ViewController ()



@end

@implementation ViewController

{
    NSArray *recipes;
    KLBasket *basket;
    NSMutableArray *tmp;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    basket = [[KLBasket alloc]init];
    tmp = [NSMutableArray new];
    KLApple *apple1 = [[KLApple alloc] initWithSort:@"AppleSort1"];
    KLApple *apple2 = [[KLApple alloc] initWithSort:@"AppleSort2"];
    KLApple *apple3 = [[KLApple alloc] initWithSort:@"AppleSort3"];
    KLBanana *banana1 = [[KLBanana alloc] initWithSort:@"BananaSort1"];
    KLBanana *banana2 = [[KLBanana alloc] initWithSort:@"BananaSort2"];
    KLOrange *orange1 = [[KLOrange alloc] initWithSort:@"OrangeSort1"];
    KLApple *orange2 = [[KLOrange alloc] initWithSort:@"OrangeSort2"];
    [basket add:apple1];
    [basket add:apple2];
    [basket add:apple3];
    [basket add:banana1];
    [basket add:banana2];
    [basket add:orange1];
    [basket add:orange2];
    
    while ([basket hasNext]) {
       [tmp addObject:[basket next]];
    }


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tmp count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[tmp objectAtIndex:indexPath.row] showInformationAboutFruit];
    return cell;
}

@end
