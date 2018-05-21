//
//  DetailedView.m
//  Crayons
//
//  Created by Richard Crichlow on 5/18/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "DetailedView.h"

#define PADDING 20

@implementation DetailedView

// -(instancetype) is more type safe over -(id)
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // do setup code for views
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    self.backgroundColor = [UIColor orangeColor];

}








@end
