//
//  B.m
//  push&pop
//
//  Created by quwanma_pb on 16/9/5.
//  Copyright © 2016年 quwanma. All rights reserved.
//

#import "B.h"
#import "D.h"
#import "C.h"
@interface B ()

@end

@implementation B

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"B";
    self.view.backgroundColor = [UIColor whiteColor];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    D*vc = [[D alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    C * vc1 = [[C alloc] init];
    NSMutableArray *vcArr = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    [vcArr insertObject:vc1 atIndex:vcArr.count-2];
    [vcArr removeObject:self];
    
    [self.navigationController setViewControllers:vcArr animated:YES];

}
@end
