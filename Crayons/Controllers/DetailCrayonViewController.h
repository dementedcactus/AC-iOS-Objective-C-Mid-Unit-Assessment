//
//  DetailCrayonViewController.h
//  Crayons
//
//  Created by Richard Crichlow on 5/21/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CrayonDetailView.h"
#import "Crayon.h"

@interface DetailCrayonViewController : UIViewController

@property (strong, nonatomic) CrayonDetailView *crayonDetailView;
@property (strong, nonatomic) Crayon *crayon;

-(instancetype) initWithCrayon: (Crayon*) crayon;

@end
