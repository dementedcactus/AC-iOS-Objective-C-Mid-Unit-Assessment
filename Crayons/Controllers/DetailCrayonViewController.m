//
//  DetailCrayonViewController.m
//  Crayons
//
//  Created by Richard Crichlow on 5/21/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "DetailCrayonViewController.h"
#import "CrayonDetailView.h"

@interface DetailCrayonViewController ()

@end

@implementation DetailCrayonViewController

#pragma mark - View LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureNavBar];
    [self allocInitSubViews];
    [self configureDetailCrayonView];
    [self configureSliders];
    //UIColor *myColorFromHex = [[UIColor alloc] initWiThHex:@"#FF1113"];
}


#pragma mark - Inits

-(instancetype)initWithCrayon:(Crayon *)crayon{
    self = [super init];
    if (self){
        _crayon = crayon;
    }
    return  self;
}


#pragma mark - View Allocations
-(void) allocInitSubViews{
    _crayonDetailView = [[CrayonDetailView alloc] initWithFrame:CGRectZero];
}
#pragma mark - SubViews Constraints
-(void) configureDetailCrayonView{
    [self.view addSubview:_crayonDetailView];
    [_crayonDetailView configureCrayonDetailView:_crayon];
    _crayonDetailView.translatesAutoresizingMaskIntoConstraints = NO;
    [NSLayoutConstraint activateConstraints:@[
                                              [_crayonDetailView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
                                              [_crayonDetailView.bottomAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.bottomAnchor],
                                              [_crayonDetailView.leftAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.leftAnchor],
                                              [_crayonDetailView.rightAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.rightAnchor],
                                              ]];
    
}

#pragma configure Navigation Bar

-(void) configureNavBar{
    self.navigationItem.title = @"Preferences";
}
#pragma configure Sliders

-(void) configureSliders{
    [self.crayonDetailView.crayonRedSlider addTarget:self action:@selector(redSliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.crayonDetailView.crayonGreenSlider addTarget:self action:@selector(greenSliderValueChanged:)  forControlEvents:UIControlEventValueChanged];
    [self.crayonDetailView.crayonBlueStepper addTarget:self action:@selector(blueStepperValueChanged:) forControlEvents:UIControlEventValueChanged];
}

-(void) redSliderValueChanged: (UISlider *) sender{
    double sliderValue = sender.value;
    self.crayon.red = sliderValue;
    self.crayonDetailView.crayonRedValueLabel.text = [NSString stringWithFormat:@"Red: %f", _crayon.red];
    self.crayonDetailView.backgroundColor = [UIColor colorWithRed:(_crayon.red/255) green:(_crayon.green/255) blue:(_crayon.blue/255) alpha: 1.0];
}

-(void) greenSliderValueChanged: (UISlider *) sender{
    double sliderValue = sender.value;
    self.crayon.green = sliderValue;
    self.crayonDetailView.crayonGreenValueLabel.text = [NSString stringWithFormat:@"Green: %f", _crayon.green];
    self.crayonDetailView.backgroundColor = [UIColor colorWithRed:(_crayon.red/255) green:(_crayon.green/255) blue:(_crayon.blue/255) alpha: 1.0];
}
-(void) blueStepperValueChanged: (UIStepper *) sender{
    double stepperValue = sender.value;
    self.crayon.blue = stepperValue;
    self.crayonDetailView.crayonBlueValueLabel.text = [NSString stringWithFormat:@"Blue: %f", _crayon.blue];
    self.crayonDetailView.backgroundColor = [UIColor colorWithRed:(_crayon.red/255) green:(_crayon.green/255) blue:(_crayon.blue/255) alpha: 1.0];
}




@end
