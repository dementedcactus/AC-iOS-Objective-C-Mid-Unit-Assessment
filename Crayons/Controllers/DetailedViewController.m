//
//  DetailedViewController.m
//  Crayons
//
//  Created by Richard Crichlow on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "DetailedViewController.h"
#import "DetailedView.h"

@interface DetailedViewController ()
// private properties or methods
@property (nonatomic) DetailedView *detailedView;
@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // lazy initialization
    if(!_detailedView)
        _detailedView = [[DetailedView alloc] initWithFrame:UIScreen.mainScreen.bounds];
    
    // we can send message to nil without crashes
    [self.view addSubview:self.detailedView];
    
    //[self registerForKeyboardNotifications];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
