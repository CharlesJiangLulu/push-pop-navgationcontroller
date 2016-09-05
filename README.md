# push-pop-navgationcontroller
    //改变nav里面的viewControllers。
    C * vc1 = [[C alloc] init];
    NSMutableArray *vcArr = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    [vcArr insertObject:vc1 atIndex:vcArr.count-2];
    [vcArr removeObject:self];

    [self.navigationController setViewControllers:vcArr animated:YES];
