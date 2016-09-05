//
//  A.m
//  push&pop
//
//  Created by quwanma_pb on 16/9/5.
//  Copyright © 2016年 quwanma. All rights reserved.
//

#import "A.h"
#import "B.h"

@interface A ()

@end

@implementation A

- (void)viewDidLoad {
    [super viewDidLoad];

    //    A push B 后， B 在push 到 D ，然后从 D pop 到 C ,在从 C pop 的A
    self.title = @"A";
    self.view.backgroundColor = [UIColor whiteColor];

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    B*vc = [[B alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
