//
//  CrayonDetailView.m
//  Crayons
//
//  Created by Richard Crichlow on 5/21/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "CrayonDetailView.h"

@implementation CrayonDetailView





-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self allocInitSubViews];
        [self addSubView];
        [self configureConstraints];
    }
    return self;
}


-(void)allocInitSubViews{
    _crayonNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _crayonRedValueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _crayonRedSlider = [[UISlider alloc] initWithFrame:CGRectZero];
    _crayonGreenValueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _crayonGreenSlider = [[UISlider alloc] initWithFrame:CGRectZero];
    _crayonBlueValueLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _crayonBlueStepper = [[UIStepper alloc] initWithFrame:CGRectZero];
    
    
    //TODO setup the rest of labels and sliders
    
    
}
-(void)addSubView{
    [self addSubview:_crayonNameLabel];
    [self addSubview:_crayonRedValueLabel];
    [self addSubview:_crayonRedSlider];
    [self addSubview:_crayonGreenValueLabel];
    [self addSubview:_crayonGreenSlider];
    [self addSubview:_crayonBlueValueLabel];
    [self addSubview:_crayonBlueStepper];
    
    
}
-(void)configureConstraints{
    //CrayonNameLabel
    _crayonNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonNameLabel.topAnchor constraintEqualToAnchor:self.topAnchor constant:20],
                                              [_crayonNameLabel.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
                                              [_crayonNameLabel.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:10],
                                              ]];
    //CrayonRedValueLabel
    _crayonRedValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonRedValueLabel.topAnchor constraintEqualToAnchor:self.crayonNameLabel.bottomAnchor constant:15],
                                              [_crayonRedValueLabel.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
                                              [_crayonRedValueLabel.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:0.40]
                                              ]];
    //CrayonRedSlider
    _crayonRedSlider.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonRedSlider.leftAnchor constraintEqualToAnchor:self.crayonRedValueLabel.rightAnchor constant:5],
                                              [_crayonRedSlider.centerYAnchor constraintEqualToAnchor:self.crayonRedValueLabel.centerYAnchor],
                                              [_crayonRedSlider.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-10]
                                              
                                              ]];
    //CrayonGreenValueLabel
    _crayonGreenValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonGreenValueLabel.topAnchor constraintEqualToAnchor:self.crayonRedValueLabel.bottomAnchor constant:15],
                                              [_crayonGreenValueLabel.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
                                              [_crayonGreenValueLabel.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:0.40]
                                              ]];
    //CrayonGreenSlider
    _crayonGreenSlider.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonGreenSlider.leftAnchor constraintEqualToAnchor:self.crayonGreenValueLabel.rightAnchor constant:5],
                                              [_crayonGreenSlider.centerYAnchor constraintEqualToAnchor:self.crayonGreenValueLabel.centerYAnchor],
                                              [_crayonGreenSlider.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-10]
                                              ]];
    //CrayonBlueValueLabel
    _crayonBlueValueLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonBlueValueLabel.topAnchor constraintEqualToAnchor:self.crayonGreenValueLabel.bottomAnchor constant:15],
                                              [_crayonBlueValueLabel.leftAnchor constraintEqualToAnchor:self.leftAnchor constant:10],
                                              [_crayonBlueValueLabel.widthAnchor constraintEqualToAnchor:self.widthAnchor multiplier:0.40]
                                              ]];
    //CrayonBlueStepper
    _crayonBlueStepper.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonBlueStepper.centerYAnchor constraintEqualToAnchor:self.crayonBlueValueLabel.centerYAnchor],
                                              [_crayonBlueStepper.rightAnchor constraintEqualToAnchor:self.rightAnchor constant:-10]
                                              
                                              ]];
    
}
-(void)configureCrayonDetailView: (Crayon *) crayon{
    self.backgroundColor = [UIColor colorWithRed:(crayon.red/255) green:(crayon.green/255) blue:(crayon.blue/255) alpha: 1.0];
    self.crayonNameLabel.text = crayon.name;
    self.crayonNameLabel.font = [UIFont boldSystemFontOfSize:30];
    
    // configure the red label
    self.crayonRedValueLabel.text = [NSString stringWithFormat:@"Red: %f", crayon.red];
    
    //Configure the Red Slider
    [_crayonRedSlider setMaximumValue:255];
    [_crayonRedSlider setMinimumValue:0];
    [_crayonRedSlider setValue:crayon.red];
    
    //Configure the Green label
    self.crayonGreenValueLabel.text = [NSString stringWithFormat:@"Green: %f", crayon.green];
    
    //Configure the Green Slider
    [_crayonGreenSlider setMaximumValue:255];
    [_crayonGreenSlider setMinimumValue:0];
    [_crayonGreenSlider setValue:crayon.green];
    
    //configure Blue Label
    self.crayonBlueValueLabel.text = [NSString stringWithFormat:@"Blue: %f", crayon.blue];
    
    //configure Blue Stepper
    [_crayonBlueStepper setMaximumValue:0];
    [_crayonBlueStepper setMaximumValue:255];
    [_crayonBlueStepper setValue:crayon.blue];
    
    //Configure labels for black color
    if ([crayon.hex isEqualToString:@"#000000"]){
        self.crayonNameLabel.textColor = UIColor.whiteColor;
        self.crayonRedValueLabel.textColor = UIColor.whiteColor;
        self.crayonGreenValueLabel.textColor = UIColor.whiteColor;
        self.crayonBlueValueLabel.textColor = UIColor.whiteColor;
        
    }
    
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


@end
