//
//  CrayonDetailView.h
//  Crayons
//
//  Created by Richard Crichlow on 5/21/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Crayon.h"

@interface CrayonDetailView : UIView

@property (strong, nonatomic) UILabel *crayonNameLabel;
@property (strong, nonatomic) UILabel *crayonRedValueLabel;
@property (strong, nonatomic) UILabel *crayonGreenValueLabel;
@property (strong, nonatomic) UILabel *crayonBlueValueLabel;
@property (strong, nonatomic) UILabel *crayonAlphaValueLabel;

@property (strong, nonatomic) UISlider *crayonRedSlider;
@property (strong, nonatomic) UISlider *crayonGreenSlider;
@property (strong, nonatomic) UIStepper *crayonBlueStepper;
@property (strong, nonatomic) UIStepper *crayonAlphaStepper;


-(void)configureCrayonDetailView: (Crayon *) crayon;

@end
